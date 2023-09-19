import 'package:json_annotation/json_annotation.dart';

part 'character_output.g.dart';

@JsonSerializable()
class CharacterOutput {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final CharacterLocationOutput? origin;
  final CharacterLocationOutput? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final DateTime? created;

  const CharacterOutput({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  factory CharacterOutput.fromJson(Map<String, dynamic> json) => _$CharacterOutputFromJson(json);
}

@JsonSerializable()
class CharacterLocationOutput {
  final String? name;
  final String? url;

  const CharacterLocationOutput({
    this.name,
    this.url,
  });

  factory CharacterLocationOutput.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationOutputFromJson(json);
}
