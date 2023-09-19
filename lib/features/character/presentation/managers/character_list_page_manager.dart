import 'package:rick_and_morty_app/features/character/domain/use_cases/get_all_characters_use_case.dart';
import 'package:rick_and_morty_app/features/character/presentation/managers/character_list_page_state.dart';
import 'package:rick_and_morty_app/shared/data/repositories/base_response_state.dart';
import 'package:rick_and_morty_app/shared/presentation/managers/base_state_manager.dart';

class CharacterListPageManager extends BaseStateManager<CharacterListPageState> {
  final GetAllCharactersUseCase _getAllCharactersUseCase;

  CharacterListPageManager(
    this._getAllCharactersUseCase,
  ) : super(const CharacterListPageState());

  Future<void> onInit() async {
    getAllCharacters();
  }

  Future<void> getAllCharacters() async {
    state = state.copyWith(responseState: const ResponseState.loading());

    final result = await _getAllCharactersUseCase.execute();

    state = state.copyWith(
      characterListEntity: result,
      responseState: const ResponseState.success(),
    );
  }
}
