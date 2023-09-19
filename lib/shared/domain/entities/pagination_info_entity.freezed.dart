// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationInfoEntity {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  String get prev => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationInfoEntityCopyWith<PaginationInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoEntityCopyWith<$Res> {
  factory $PaginationInfoEntityCopyWith(PaginationInfoEntity value,
          $Res Function(PaginationInfoEntity) then) =
      _$PaginationInfoEntityCopyWithImpl<$Res, PaginationInfoEntity>;
  @useResult
  $Res call({int count, int pages, String next, String prev});
}

/// @nodoc
class _$PaginationInfoEntityCopyWithImpl<$Res,
        $Val extends PaginationInfoEntity>
    implements $PaginationInfoEntityCopyWith<$Res> {
  _$PaginationInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationInfoEntityCopyWith<$Res>
    implements $PaginationInfoEntityCopyWith<$Res> {
  factory _$$_PaginationInfoEntityCopyWith(_$_PaginationInfoEntity value,
          $Res Function(_$_PaginationInfoEntity) then) =
      __$$_PaginationInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String next, String prev});
}

/// @nodoc
class __$$_PaginationInfoEntityCopyWithImpl<$Res>
    extends _$PaginationInfoEntityCopyWithImpl<$Res, _$_PaginationInfoEntity>
    implements _$$_PaginationInfoEntityCopyWith<$Res> {
  __$$_PaginationInfoEntityCopyWithImpl(_$_PaginationInfoEntity _value,
      $Res Function(_$_PaginationInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = null,
  }) {
    return _then(_$_PaginationInfoEntity(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaginationInfoEntity implements _PaginationInfoEntity {
  const _$_PaginationInfoEntity(
      {this.count = 0, this.pages = 0, this.next = '', this.prev = ''});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int pages;
  @override
  @JsonKey()
  final String next;
  @override
  @JsonKey()
  final String prev;

  @override
  String toString() {
    return 'PaginationInfoEntity(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationInfoEntity &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationInfoEntityCopyWith<_$_PaginationInfoEntity> get copyWith =>
      __$$_PaginationInfoEntityCopyWithImpl<_$_PaginationInfoEntity>(
          this, _$identity);
}

abstract class _PaginationInfoEntity implements PaginationInfoEntity {
  const factory _PaginationInfoEntity(
      {final int count,
      final int pages,
      final String next,
      final String prev}) = _$_PaginationInfoEntity;

  @override
  int get count;
  @override
  int get pages;
  @override
  String get next;
  @override
  String get prev;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationInfoEntityCopyWith<_$_PaginationInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
