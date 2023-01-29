import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/data/api/api_client.dart';
import 'package:diet_maker/core/data/api/fake_api_client.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Failure, bool>> login() async {
    try {
      final response = await _apiClient.login();
      return Right(response);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }
}
