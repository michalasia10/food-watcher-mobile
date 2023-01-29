// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      id: json['id'] as int,
      name: json['name'] as String,
      pictUrl: json['pict_url'] as String,
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pict_url': instance.pictUrl,
    };
