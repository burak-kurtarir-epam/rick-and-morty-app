import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_location_model.freezed.dart';
part 'character_location_model.g.dart';

@freezed
class CharacterLocationModel with _$CharacterLocationModel {
  factory CharacterLocationModel({
    String? name,
    String? url,
  }) = _CharacterLocationModel;

  factory CharacterLocationModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationModelFromJson(json);
}
