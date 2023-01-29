import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';

abstract class LoginUseCase extends UseCase<bool, NoParams> {}

class LoginUseCaseImpl extends LoginUseCase {
  LoginUseCaseImpl(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, bool>> execute(NoParams params) async {
    return _repository.login();
  }
}
