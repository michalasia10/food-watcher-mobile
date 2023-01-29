import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_for_category_response.g.dart';

@JsonSerializable()
class RecipeForCategoryResponse {
  RecipeForCategoryResponse({required this.recipes});

  factory RecipeForCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeForCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeForCategoryResponseToJson(this);

  List<Recipe> recipes;
}
