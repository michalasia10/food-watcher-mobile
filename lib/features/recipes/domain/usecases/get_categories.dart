import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';

abstract class GetCategories extends UseCase<List<Category>, NoParams> {}

class GetCategoriesImpl extends GetCategories {
  GetCategoriesImpl(this._repository);

  final RecipeRepository _repository;

  @override
  Future<Either<Failure, List<Category>>> execute(NoParams params) async {
    return _repository.getCategories();
  }
}
