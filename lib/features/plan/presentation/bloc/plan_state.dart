part of 'plan_bloc.dart';

@freezed
class PlanState with _$PlanState {
  const factory PlanState.initial() = _Initial;

  const factory PlanState.loading() = _Loading;

  const factory PlanState.plan(List<String> plan) = _Plan;

  const factory PlanState.failed(Failure failure) = _Failed;
}
