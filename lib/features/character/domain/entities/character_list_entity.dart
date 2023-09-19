import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty_app/shared/domain/entities/pagination_info_entity.dart';

part 'character_list_entity.freezed.dart';

@freezed
class CharacterListEntity with _$CharacterListEntity {
  const factory CharacterListEntity({
    @Default(PaginationInfoEntity()) PaginationInfoEntity info,
    @Default([]) List<CharacterEntity> results,
  }) = _CharacterListEntity;
}
