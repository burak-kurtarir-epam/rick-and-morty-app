import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/core/networking/response_state.dart';
import 'package:rick_and_morty_app/pages/characters/model/character_model.dart';

part 'characters_state.freezed.dart';

@freezed
class CharactersState with _$CharactersState {
  factory CharactersState({
    required List<CharacterModel> characters,
    required ResponseState responseState,
  }) = _CharactersState;
}
