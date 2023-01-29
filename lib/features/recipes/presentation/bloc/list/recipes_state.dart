part of 'recipes_bloc.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = _Initial;

  const factory RecipesState.loading() = _Loading;

  const factory RecipesState.recipes(List<Recipe> recipes) = _Recipes;

  const factory RecipesState.failed(Failure failure) = _Failed;
}
