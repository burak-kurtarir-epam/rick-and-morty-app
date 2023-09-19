import 'package:rick_and_morty_app/features/character/data/repositories/character_repository_mapper.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_list_entity.dart';
import 'package:rick_and_morty_app/features/character/domain/repositories/character_repository.dart';
import 'package:rick_and_morty_app/shared/data/repositories/base_repository.dart';
import 'package:rm_api_services/rm_api_services.dart';

class CharacterRepositoryImpl extends BaseRepository implements CharacterRepository {
  final CharacterService _characterService;

  CharacterRepositoryImpl(this._characterService);

  @override
  Future<CharacterListEntity> getAll() {
    return executeApiCall(
      invoker: _characterService.getAll,
      mapper: (result) => result.toEntity(),
    );
  }
}
