import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';
import 'package:diet_maker/features/auth/domain/usecases/login.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late AuthRepository _repository;
  late LoginUseCase _login;

  setUp(() {
    _repository = MockAuthRepository();
    _login = LoginUseCaseImpl(_repository);
  });

  group('GIVEN Login use case invoked', () {
    test('WHEN repository emits valid response THEN should emit [Right] with success (true)', () async {
      when(() => _repository.login()).thenAnswer((_) async => Right(true));

      final result = await _login.execute(NoParams());

      expect(
        result,
        Right(true),
      );
      verify(() => _repository.login()).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
