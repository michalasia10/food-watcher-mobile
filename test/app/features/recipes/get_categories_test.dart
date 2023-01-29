import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';
import 'package:diet_maker/features/plan/domain/usecases/get_plan.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/domain/usecases/get_products.dart';
import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:diet_maker/features/recipes/domain/usecases/get_categories.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRecipeRepository extends Mock implements RecipeRepository {}
class MockCategory extends Mock implements Category {}

void main() {
  late RecipeRepository _repository;
  late GetCategories _getCategories;

  final List<Category> _mockedCategories = [MockCategory(), MockCategory()];

  setUp(() {
    _repository = MockRecipeRepository();
    _getCategories = GetCategoriesImpl(_repository);
  });

  group('GIVEN GetCategories use case invoked', () {
    test('WHEN repository emits valid response THEN should emit [Right] with categories ', () async {
      when(() => _repository.getCategories()).thenAnswer((_) async => Right(_mockedCategories));

      final result = await _getCategories.execute(NoParams());

      expect(
        result,
        Right(_mockedCategories),
      );
      verify(() => _repository.getCategories()).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
