import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';

abstract class GetRecipes extends UseCase<List<Recipe>, NoParams> {}

class GetRecipesImpl extends GetRecipes {
  GetRecipesImpl(this._repository);

  final RecipeRepository _repository;

  @override
  Future<Either<Failure, List<Recipe>>> execute(NoParams params) async {
    return _repository.getRecipes();
  }
}
