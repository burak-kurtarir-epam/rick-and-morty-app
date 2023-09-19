// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterListEntity {
  PaginationInfoEntity get info => throw _privateConstructorUsedError;
  List<CharacterEntity> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterListEntityCopyWith<CharacterListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListEntityCopyWith<$Res> {
  factory $CharacterListEntityCopyWith(
          CharacterListEntity value, $Res Function(CharacterListEntity) then) =
      _$CharacterListEntityCopyWithImpl<$Res, CharacterListEntity>;
  @useResult
  $Res call({PaginationInfoEntity info, List<CharacterEntity> results});

  $PaginationInfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterListEntityCopyWithImpl<$Res, $Val extends CharacterListEntity>
    implements $CharacterListEntityCopyWith<$Res> {
  _$CharacterListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PaginationInfoEntity,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationInfoEntityCopyWith<$Res> get info {
    return $PaginationInfoEntityCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterListEntityCopyWith<$Res>
    implements $CharacterListEntityCopyWith<$Res> {
  factory _$$_CharacterListEntityCopyWith(_$_CharacterListEntity value,
          $Res Function(_$_CharacterListEntity) then) =
      __$$_CharacterListEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationInfoEntity info, List<CharacterEntity> results});

  @override
  $PaginationInfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharacterListEntityCopyWithImpl<$Res>
    extends _$CharacterListEntityCopyWithImpl<$Res, _$_CharacterListEntity>
    implements _$$_CharacterListEntityCopyWith<$Res> {
  __$$_CharacterListEntityCopyWithImpl(_$_CharacterListEntity _value,
      $Res Function(_$_CharacterListEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_CharacterListEntity(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PaginationInfoEntity,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ));
  }
}

/// @nodoc

class _$_CharacterListEntity implements _CharacterListEntity {
  const _$_CharacterListEntity(
      {this.info = const PaginationInfoEntity(),
      final List<CharacterEntity> results = const []})
      : _results = results;

  @override
  @JsonKey()
  final PaginationInfoEntity info;
  final List<CharacterEntity> _results;
  @override
  @JsonKey()
  List<CharacterEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharacterListEntity(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListEntity &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterListEntityCopyWith<_$_CharacterListEntity> get copyWith =>
      __$$_CharacterListEntityCopyWithImpl<_$_CharacterListEntity>(
          this, _$identity);
}

abstract class _CharacterListEntity implements CharacterListEntity {
  const factory _CharacterListEntity(
      {final PaginationInfoEntity info,
      final List<CharacterEntity> results}) = _$_CharacterListEntity;

  @override
  PaginationInfoEntity get info;
  @override
  List<CharacterEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListEntityCopyWith<_$_CharacterListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
