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
  final LocationOutput? origin;
  final LocationOutput? location;
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
class LocationOutput {
  final String? name;
  final String? url;

  const LocationOutput({
    this.name,
    this.url,
  });

  factory LocationOutput.fromJson(Map<String, dynamic> json) => _$LocationOutputFromJson(json);
}
