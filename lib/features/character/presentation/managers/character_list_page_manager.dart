import 'package:rick_and_morty_app/features/character/domain/use_cases/character_use_cases.dart';
import 'package:rick_and_morty_app/features/character/presentation/managers/character_list_page_state.dart';
import 'package:rick_and_morty_app/shared/presentation/managers/base_response_state.dart';
import 'package:rick_and_morty_app/shared/presentation/managers/base_state_manager.dart';
import 'package:rick_and_morty_app/shared/presentation/managers/safe_executor_manager.dart';

class CharacterListPageManager extends BaseStateManager<CharacterListPageState> {
  final GetAllCharactersUseCase _getAllCharactersUseCase;
  final SafeExecutorManager _safeExecutorManager;

  CharacterListPageManager(
    this._getAllCharactersUseCase,
    this._safeExecutorManager,
  ) : super(const CharacterListPageState());

  Future<void> onInit() async {
    getAllCharacters();
  }

  int page = 1;
  bool get hasReachedMax {
    return page >= state.characterListEntity.info.pages ||
        state.characterListEntity.info.next.isEmpty;
  }

  Future<void> getAllCharacters() async {
    page = 1;

    state = state.copyWith(responseState: const ResponseState.loading());

    _safeExecutorManager.makeAsyncSafeExecution(
      function: _getAllCharactersUseCase.execute,
      onSuccess: (result) {
        state = state.copyWith(
          characterListEntity: result,
          responseState: const ResponseState.success(),
        );
      },
      onError: (e) {
        state = state.copyWith(responseState: ResponseState.error(message: e.toString()));
      },
    );
  }

  Future<void> loadMore() async {
    if (hasReachedMax) {
      return;
    }

    page += 1;

    _safeExecutorManager.makeAsyncSafeExecution(
      function: () => _getAllCharactersUseCase.execute(page: page),
      onSuccess: (result) {
        final characters = [...state.characterListEntity.results, ...result.results];

        state = state.copyWith(
          characterListEntity: result.copyWith(results: characters),
          responseState: const ResponseState.success(),
        );
      },
      onError: (e) {
        state = state.copyWith(responseState: ResponseState.error(message: e.toString()));
      },
    );
  }
}
