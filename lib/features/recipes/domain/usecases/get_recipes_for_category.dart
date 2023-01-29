import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';

abstract class GetRecipesForCategory extends UseCase<List<Recipe>, int> {}

class GetRecipesForCategoryImpl extends GetRecipesForCategory {
  GetRecipesForCategoryImpl(this._repository);

  final RecipeRepository _repository;

  @override
  Future<Either<Failure, List<Recipe>>> execute(int params) async {
    return _repository.getRecipesForCategory(params);
  }
}
