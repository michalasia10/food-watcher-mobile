import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  Category({
    required this.id,
    required this.name,
    required this.pictUrl
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  int id;
  String name;
  @JsonKey(name: 'pict_url')
  String pictUrl;
}
