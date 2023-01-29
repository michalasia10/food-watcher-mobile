import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:diet_maker/features/recipes/domain/usecases/get_recipes_for_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';

part 'recipes_bloc.freezed.dart';
part 'recipes_state.dart';

class RecipesBloc extends Cubit<RecipesState> {
  RecipesBloc(this.getRecipesForCategory) : super(const RecipesState.initial());

  factory RecipesBloc.fromContext(BuildContext context) {
    return RecipesBloc(
      GetRecipesForCategoryImpl(
        context.read<RecipeRepository>(),
      ),
    );
  }

  final GetRecipesForCategory getRecipesForCategory;

  Future<void> loadRecipesForCategory(int categoryId) async {
    emit (const RecipesState.loading());
    final Either<Failure, List<Recipe>> eitherResults = await getRecipesForCategory.execute(categoryId);
    eitherResults.fold(
            (Failure failure) => emit(RecipesState.failed(failure)),
            (List<Recipe> recipes) => emit(RecipesState.recipes(recipes))
    );
  }
}
