import 'package:json_annotation/json_annotation.dart';
import 'package:rm_api_services/models/character_output.dart';

part 'character_list_output.g.dart';

@JsonSerializable()
class CharacterListOutput {
  final InfoOutput? info;
  final List<CharacterOutput>? results;
  final int? age;

  const CharacterListOutput({
    this.info,
    this.results,
    this.age,
  });

  factory CharacterListOutput.fromJson(Map<String, dynamic> json) =>
      _$CharacterListOutputFromJson(json);
}

@JsonSerializable()
class InfoOutput {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  const InfoOutput({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  factory InfoOutput.fromJson(Map<String, dynamic> json) => _$InfoOutputFromJson(json);
}
