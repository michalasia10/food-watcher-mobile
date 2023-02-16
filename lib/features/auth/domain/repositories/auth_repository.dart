import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> login(String username, String password);
}
