import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/data/api/api_client.dart';
import 'package:diet_maker/core/data/api/fake_api_client.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/plan/domain/entities/add_to_plan_params.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';

class PlanRepositoryImpl extends PlanRepository {
  PlanRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Failure, List<String>>> getPlan(int userId, int timestamp, int dayCount) async {
    try {
      final response = await _apiClient.get('plan/$userId/$timestamp/$dayCount');

      List<String> entries = response
          .map<String>((e) => e['name'].toString())
          .toList();

      return Right(entries);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> addEntry(AddEntryParams params) {
    // TODO: implement addEntry
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> deleteEntry(int entryId) {
    // TODO: implement deleteEntry
    throw UnimplementedError();
  }
}
