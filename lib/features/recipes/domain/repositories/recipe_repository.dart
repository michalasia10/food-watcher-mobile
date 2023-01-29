import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';

abstract class RecipeRepository {
  Future<Either<Failure, List<Category>>> getCategories();
  Future<Either<Failure, List<Recipe>>> getRecipes();
  Future<Either<Failure, List<Recipe>>> getRecipesForCategory(int categoryId);
}
