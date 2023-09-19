import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info_entity.freezed.dart';

@freezed
class PaginationInfoEntity with _$PaginationInfoEntity {
  const factory PaginationInfoEntity({
    @Default(0) int count,
    @Default(0) int pages,
    @Default('') String next,
    @Default('') String prev,
  }) = _PaginationInfoEntity;
}
