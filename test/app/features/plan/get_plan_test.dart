import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';
import 'package:diet_maker/features/plan/domain/usecases/get_plan.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlanRepository extends Mock implements PlanRepository {}

void main() {
  late PlanRepository _repository;
  late GetPlan _getPlan;

  final List<String> _mockedPlans = ["1", "2", "3"];

  setUp(() {
    _repository = MockPlanRepository();
    _getPlan = GetPlanImpl(_repository);
  });

  group('GIVEN GetPlan use case invoked', () {
    test('WHEN repository emits valid response THEN should emit [Right] with timestamps', () async {
      when(() => _repository.getPlan(1, 1650412800, 1)).thenAnswer((_) async => Right(_mockedPlans));

      final result = await _getPlan.execute(NoParams());

      expect(
        result,
        Right(_mockedPlans),
      );
      verify(() => _repository.getPlan(1, 1650412800, 1)).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
