// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipesResponse _$RecipesResponseFromJson(Map<String, dynamic> json) =>
    RecipesResponse(
      recipes: (json['items'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipesResponseToJson(RecipesResponse instance) =>
    <String, dynamic>{
      'items': instance.recipes,
    };
