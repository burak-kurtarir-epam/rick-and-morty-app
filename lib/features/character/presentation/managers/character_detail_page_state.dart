import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_entity.dart';

part 'character_detail_page_state.freezed.dart';

@freezed
class CharacterDetailPageState with _$CharacterDetailPageState {
  const factory CharacterDetailPageState({
    @Default(CharacterEntity()) CharacterEntity character,
  }) = _CharacterDetailPageState;
}
