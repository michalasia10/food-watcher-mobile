import 'package:dartz/dartz.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:diet_maker/features/recipes/domain/usecases/get_recipes_for_category.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late RecipeRepository _repository;
  late GetRecipesForCategory _getRecipesForCategory;

  final int categoryId = 1;

  final List<Recipe> _mockedRecipes = [MockRecipe(), MockRecipe()];

  setUp(() {
    _repository = MockRecipeRepository();
    _getRecipesForCategory = GetRecipesForCategoryImpl(_repository);
  });

  group('GIVEN GetRecipes use case invoked', () {
    test('WHEN repository emits valid response THEN should emit [Right] with recipes', () async {
      when(() => _repository.getRecipesForCategory(categoryId)).thenAnswer((_) async => Right(_mockedRecipes));

      final result = await _getRecipesForCategory.execute(1);

      expect(
        result,
        Right(_mockedRecipes),
      );
      verify(() => _repository.getRecipesForCategory(categoryId)).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
