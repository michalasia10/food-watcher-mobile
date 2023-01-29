import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';
import 'package:diet_maker/features/auth/domain/usecases/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(const LoginState.initial());

  factory LoginCubit.fromContext(BuildContext context) =>
      LoginCubit(LoginUseCaseImpl(context.read<AuthRepository>()));

  final LoginUseCase loginUseCase;

  Future<void> login() async {
    emit(const LoginState.loading());
    final Either<Failure, bool> eitherResults =
        await loginUseCase.execute(NoParams());
    eitherResults.fold(
      (Failure failure) => emit(LoginState.failed(failure)),
      (bool success) => emit(LoginState.success()),
    );
  }
}
