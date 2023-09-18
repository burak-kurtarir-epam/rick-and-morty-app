// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterOutput _$CharacterOutputFromJson(Map<String, dynamic> json) =>
    CharacterOutput(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] == null
          ? null
          : LocationOutput.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationOutput.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String?,
      episode:
          (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$CharacterOutputToJson(CharacterOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created?.toIso8601String(),
    };

LocationOutput _$LocationOutputFromJson(Map<String, dynamic> json) =>
    LocationOutput(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LocationOutputToJson(LocationOutput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
