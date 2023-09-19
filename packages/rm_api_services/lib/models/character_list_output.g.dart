// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterListOutput _$CharacterListOutputFromJson(Map<String, dynamic> json) =>
    CharacterListOutput(
      info: json['info'] == null
          ? null
          : PaginationInfoOutput.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CharacterOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      age: json['age'] as int?,
    );

Map<String, dynamic> _$CharacterListOutputToJson(
        CharacterListOutput instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
      'age': instance.age,
    };
