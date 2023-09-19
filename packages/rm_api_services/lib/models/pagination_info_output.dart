import 'package:json_annotation/json_annotation.dart';

part 'pagination_info_output.g.dart';

@JsonSerializable()
class PaginationInfoOutput {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  const PaginationInfoOutput({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  factory PaginationInfoOutput.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoOutputFromJson(json);
}
