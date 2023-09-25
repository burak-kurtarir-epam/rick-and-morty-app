import 'package:rick_and_morty_app/features/character/domain/entities/character_list_entity.dart';

abstract class CharacterRepository {
  Future<CharacterListEntity> getAll({int? page});
}
