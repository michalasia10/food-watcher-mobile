import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';
import 'package:diet_maker/features/plan/domain/usecases/get_plan.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';

part 'plan_bloc.freezed.dart';

part 'plan_state.dart';

class PlanBloc extends Cubit<PlanState> {
  PlanBloc(this.getPlan) : super(const PlanState.initial());

  factory PlanBloc.fromContext(BuildContext context) =>
      PlanBloc(GetPlanImpl(context.read<PlanRepository>()));

  final GetPlan getPlan;

  Future<void> loadPlan() async {
    emit(const PlanState.loading());
    final Either<Failure, List<String>> eitherResults =
        await getPlan.execute(NoParams());
    eitherResults.fold(
      (Failure failure) => emit(PlanState.failed(failure)),
      (List<String> plan) => emit(PlanState.plan(plan)),
    );
  }
}
