import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_output_entity.freezed.dart';

@freezed
class ProblemOutputEntity with _$ProblemOutputEntity {
  const factory ProblemOutputEntity({
    @Default('') String error,
  }) = _ProblemOutputEntity;
}
