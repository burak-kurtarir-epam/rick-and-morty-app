// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_info_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationInfoOutput _$PaginationInfoOutputFromJson(
        Map<String, dynamic> json) =>
    PaginationInfoOutput(
      count: json['count'] as int?,
      pages: json['pages'] as int?,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$PaginationInfoOutputToJson(
        PaginationInfoOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
