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
    String? type,
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

  static CharacterModel get sample {
    return CharacterModel(
      id: 2,
      name: "Morty Smith",
      status: "Alive",
      species: "Human",
      type: "",
      gender: "Male",
      origin: CharacterLocationModel.sample,
      location: CharacterLocationModel.sample,
      image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
      episode: [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2",
      ],
      url: "https://rickandmortyapi.com/api/character/2",
      created: DateTime.now(),
    );
  }

  static List<CharacterModel> get sampleList {
    return [sample, sample, sample, sample, sample, sample, sample, sample];
  }
}
