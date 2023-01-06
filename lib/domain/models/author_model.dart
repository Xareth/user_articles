import 'package:json_annotation/json_annotation.dart';

part 'author_model.g.dart';

@JsonSerializable()
class AuthorModel {
  const AuthorModel({
    required this.id,
    required this.picture,
    required this.firstName,
    required this.lastName,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'picture')
  final String picture;

  @JsonKey(name: 'firstName')
  final String firstName;

  @JsonKey(name: 'lastName')
  final String lastName;

  String get name {
    return '$firstName $lastName';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorModelToJson(this);
}
