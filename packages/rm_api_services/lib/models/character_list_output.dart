import 'package:json_annotation/json_annotation.dart';
import 'package:rm_api_services/models/character_output.dart';
import 'package:rm_api_services/models/pagination_info_output.dart';

part 'character_list_output.g.dart';

@JsonSerializable()
class CharacterListOutput {
  final PaginationInfoOutput? info;
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
