import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  final String username;
  final String password;

  LoginParams({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}

abstract class LoginUseCase extends UseCase<String, LoginParams> {}

class LoginUseCaseImpl extends LoginUseCase {
  LoginUseCaseImpl(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, String>> execute(LoginParams params) async {
    return _repository.login(params.username, params.password);
  }
}
