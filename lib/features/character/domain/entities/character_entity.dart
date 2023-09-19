import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_entity.freezed.dart';

@freezed
class CharacterEntity with _$CharacterEntity {
  const factory CharacterEntity({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String status,
    @Default('') String species,
    @Default('') String type,
    @Default('') String gender,
    @Default(CharacterLocationEntity()) CharacterLocationEntity origin,
    @Default(CharacterLocationEntity()) CharacterLocationEntity location,
    @Default('') String image,
    @Default([]) List<String> episode,
    @Default('') String url,
    final DateTime? created,
  }) = _CharacterEntity;
}

@freezed
class CharacterLocationEntity with _$CharacterLocationEntity {
  const factory CharacterLocationEntity({
    @Default('') String name,
    @Default('') String url,
  }) = _CharacterLocationEntity;
}
