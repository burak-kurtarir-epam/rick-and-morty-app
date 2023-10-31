import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/features/character/data/repositories/character_repository_impl.dart';
import 'package:rick_and_morty_app/features/character/domain/repositories/character_repository.dart';
import 'package:rick_and_morty_app/features/character/domain/use_cases/character_use_cases.dart';
import 'package:rick_and_morty_app/features/character/presentation/managers/character_detail_page_manager.dart';
import 'package:rick_and_morty_app/features/character/presentation/managers/character_detail_page_state.dart';
import 'package:rick_and_morty_app/features/character/presentation/managers/character_list_page_manager.dart';
import 'package:rick_and_morty_app/features/character/presentation/managers/character_list_page_state.dart';
import 'package:rick_and_morty_app/shared/di/providers.di.dart';

// Repositories

final characterRepositoryProvider = Provider<CharacterRepository>((ref) {
  return CharacterRepositoryImpl(
    ref.read(characterServiceProvider),
  );
});

// Use cases

final getAllCharactersUseCaseProvider = Provider<GetAllCharactersUseCase>((ref) {
  return GetAllCharactersUseCase(
    ref.read(characterRepositoryProvider),
  );
});

// Managers

final characterListPageManagerProvider =
    StateNotifierProvider.autoDispose<CharacterListPageManager, CharacterListPageState>((ref) {
  final manager = CharacterListPageManager(
    ref.read(getAllCharactersUseCaseProvider),
    ref.read(safeExecutorManagerProvider),
  );

  manager.onInit();

  return manager;
});

final characterDetailPageManagerProvider =
    StateNotifierProvider.autoDispose<CharacterDetailPageManager, CharacterDetailPageState>((ref) {
  final manager = CharacterDetailPageManager();

  return manager;
});
