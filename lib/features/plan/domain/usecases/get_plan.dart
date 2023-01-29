import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';

abstract class GetPlan extends UseCase<List<String>, NoParams> {}

class GetPlanImpl extends GetPlan {
  GetPlanImpl(this._repository);

  final PlanRepository _repository;

  @override
  Future<Either<Failure, List<String>>> execute(NoParams params) async {
    return _repository.getPlan(1, 1650412800, 1);
  }
}
