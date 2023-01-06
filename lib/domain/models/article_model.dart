import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  const ArticleModel({
    required this.id,
    required this.authorId,
    required this.content,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'authorId')
  final int authorId;

  @JsonKey(name: 'content')
  final String content;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
