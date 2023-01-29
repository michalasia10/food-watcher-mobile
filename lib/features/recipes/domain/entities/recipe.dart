import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  Recipe({
    required this.id,
    required this.name,
    required this.pictUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) =>
      _$RecipeFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeToJson(this);

  int id;
  String name;
  @JsonKey(name: "pict_url")
  String pictUrl;
}
