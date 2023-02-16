import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';
import 'package:diet_maker/features/auth/domain/usecases/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(const LoginState.initial());

  factory LoginCubit.fromContext(BuildContext context) =>
      LoginCubit(LoginUseCaseImpl(context.read<AuthRepository>()));

  final LoginUseCase loginUseCase;

  Future<void> login(String username, String password) async {
    emit(const LoginState.loading());
    final Either<Failure, String> eitherResults = await loginUseCase
        .execute(LoginParams(username: username, password: password));
    eitherResults.fold(
      (Failure failure) => emit(LoginState.failed(failure)),
      (String token) async {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token);
        emit(LoginState.success(token));
      },
    );
  }
}
