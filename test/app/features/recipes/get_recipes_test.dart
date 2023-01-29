import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:diet_maker/features/recipes/domain/usecases/get_recipes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late RecipeRepository _repository;
  late GetRecipes _getRecipes;

  final List<Recipe> _mockedRecipes = [MockRecipe(), MockRecipe()];

  setUp(() {
    _repository = MockRecipeRepository();
    _getRecipes = GetRecipesImpl(_repository);
  });

  group('GIVEN GetRecipes use case invoked', () {
    test(
        'WHEN repository emits valid response THEN should emit [Right] with recipes',
        () async {
      when(() => _repository.getRecipes())
          .thenAnswer((_) async => Right(_mockedRecipes));

      final result = await _getRecipes.execute(NoParams());

      expect(
        result,
        Right(_mockedRecipes),
      );
      verify(() => _repository.getRecipes()).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
