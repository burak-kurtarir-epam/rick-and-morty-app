import 'package:rick_and_morty_app/features/character/domain/entities/character_list_entity.dart';
import 'package:rick_and_morty_app/features/character/domain/repositories/character_repository.dart';

class GetAllCharactersUseCase {
  final CharacterRepository _characterRepository;

  GetAllCharactersUseCase(this._characterRepository);

  Future<CharacterListEntity> execute({int? page}) async {
    return _characterRepository.getAll(page: page);
  }
}
