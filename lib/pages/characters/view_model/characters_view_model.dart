import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/core/networking/response_state.dart';
import 'package:rick_and_morty_app/pages/characters/model/character_model.dart';
import 'package:rick_and_morty_app/pages/characters/view_model/characters_state.dart';

class CharactersViewModel extends StateNotifier<CharactersState> {
  CharactersViewModel()
      : super(CharactersState(
          characters: [],
          responseState: const InitialState(),
        )) {
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    state = state.copyWith(responseState: const LoadingState());

    await Future.delayed(const Duration(seconds: 3));

    state = state.copyWith(
      characters: CharacterModel.sampleList,
      responseState: const SuccessState(),
    );
  }
}
