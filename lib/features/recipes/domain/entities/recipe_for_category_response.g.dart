// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_for_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeForCategoryResponse _$RecipeForCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    RecipeForCategoryResponse(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeForCategoryResponseToJson(
        RecipeForCategoryResponse instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
