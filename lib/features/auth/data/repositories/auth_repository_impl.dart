import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/data/api/api_client.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/auth//domain/entities/user.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Failure, String>> login(
      String username, String password) async {
    try {
      User user = User(username: username, password: password);
      final response = await _apiClient.post('/login', user.toJson());
      return Right(response);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }
}
