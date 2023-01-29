import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_response.g.dart';

@JsonSerializable()
class RecipesResponse {
  RecipesResponse({required this.recipes});

  factory RecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecipesResponseToJson(this);

  @JsonKey(name: 'items')
  List<Recipe> recipes;
}
