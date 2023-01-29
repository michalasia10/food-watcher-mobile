import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/plan/domain/entities/add_to_plan_params.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';

abstract class AddToPlan extends UseCase<bool, AddEntryParams> {}

class AddToPlanImpl extends AddToPlan {
  AddToPlanImpl(this._repository);

  final PlanRepository _repository;

  @override
  Future<Either<Failure, bool>> execute(AddEntryParams params) async {
    return _repository.addEntry(params);
  }
}
