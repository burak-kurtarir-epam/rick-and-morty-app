import 'package:rick_and_morty_app/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_list_entity.dart';
import 'package:rick_and_morty_app/shared/data/repositories/base_mapper.dart';
import 'package:rick_and_morty_app/shared/domain/entities/pagination_info_entity.dart';
import 'package:rm_api_services/rm_api_services.dart';

extension CharacterLocationOutputExt on CharacterLocationOutput {
  CharacterLocationEntity toEntity() {
    return CharacterLocationEntity(
      name: name ?? '',
      url: url ?? '',
    );
  }
}

extension CharacterOutputExt on CharacterOutput {
  CharacterEntity toEntity() {
    return CharacterEntity(
      id: id ?? 0,
      name: name ?? '',
      status: status ?? '',
      species: species ?? '',
      type: type ?? '',
      gender: gender ?? '',
      origin: origin?.toEntity() ?? const CharacterLocationEntity(),
      location: location?.toEntity() ?? const CharacterLocationEntity(),
      image: image ?? '',
      episode: episode ?? const [],
      url: url ?? '',
      created: created,
    );
  }
}

extension CharacterListOutputExt on CharacterListOutput {
  CharacterListEntity toEntity() {
    return CharacterListEntity(
      info: info?.toEntity() ?? const PaginationInfoEntity(),
      results: results?.map((e) => e.toEntity()).toList() ?? const [],
    );
  }
}
