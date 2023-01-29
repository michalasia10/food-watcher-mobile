import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/data/api/api_client.dart';
import 'package:diet_maker/core/data/api/endpoints.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe_for_category_response.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipes_response.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl extends RecipeRepository {
  RecipeRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final response = await _apiClient.get(Endpoints.kCategory);
      final List<Category> categories = (response as List)
          .map((category) => Category.fromJson(category))
          .toList();

      return Right(categories);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<Recipe>>> getRecipes() async {
    try {
      final response = await _apiClient.get(Endpoints.kRecipe);
      final parsedResponse = RecipesResponse.fromJson(response);
      final recipes = parsedResponse.recipes;

      return Right(recipes);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<Recipe>>> getRecipesForCategory(
      int categoryId) async {
    try {
      var url = Endpoints.recipesFromCategory(categoryId);
      final response = await _apiClient.get(url);
      final parsedResponse = RecipeForCategoryResponse.fromJson(response);
      final recipes = parsedResponse.recipes;

      return Right(recipes);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }
}
