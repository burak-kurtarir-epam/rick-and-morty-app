import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_list_entity.dart';
import 'package:rick_and_morty_app/shared/presentation/managers/base_response_state.dart';

part 'character_list_page_state.freezed.dart';

@freezed
class CharacterListPageState with _$CharacterListPageState {
  const factory CharacterListPageState({
    @Default(CharacterListEntity()) CharacterListEntity characterListEntity,
    @Default(ResponseState.initial()) ResponseState responseState,
  }) = _CharacterListPageState;
}
