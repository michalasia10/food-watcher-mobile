import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/plan/domain/entities/add_to_plan_params.dart';

abstract class PlanRepository {
  Future<Either<Failure, List<String>>> getPlan(int userId, int timestamp, int dayCount);
  Future<Either<Failure, bool>> addEntry(AddEntryParams params);
  Future<Either<Failure, bool>> deleteEntry(int entryId);
}
