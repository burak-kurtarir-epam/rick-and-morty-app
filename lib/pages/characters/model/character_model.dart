import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/pages/characters/model/character_location_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    int? id,
    String? name,
    String? status,
    String? species,
    String? typ,
    String? gender,
    CharacterLocationModel? origin,
    CharacterLocationModel? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}
