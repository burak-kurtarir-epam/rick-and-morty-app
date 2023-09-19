import 'package:json_annotation/json_annotation.dart';

part 'problem_output.g.dart';

@JsonSerializable()
class ProblemOutput {
  final String? error;

  const ProblemOutput({this.error});

  factory ProblemOutput.fromJson(Map<String, dynamic> json) => _$ProblemOutputFromJson(json);
}
