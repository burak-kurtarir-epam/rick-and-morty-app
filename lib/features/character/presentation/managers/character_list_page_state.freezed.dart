// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterListPageState {
  CharacterListEntity get characterListEntity =>
      throw _privateConstructorUsedError;
  ResponseState get responseState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterListPageStateCopyWith<CharacterListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListPageStateCopyWith<$Res> {
  factory $CharacterListPageStateCopyWith(CharacterListPageState value,
          $Res Function(CharacterListPageState) then) =
      _$CharacterListPageStateCopyWithImpl<$Res, CharacterListPageState>;
  @useResult
  $Res call(
      {CharacterListEntity characterListEntity, ResponseState responseState});

  $CharacterListEntityCopyWith<$Res> get characterListEntity;
  $ResponseStateCopyWith<$Res> get responseState;
}

/// @nodoc
class _$CharacterListPageStateCopyWithImpl<$Res,
        $Val extends CharacterListPageState>
    implements $CharacterListPageStateCopyWith<$Res> {
  _$CharacterListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterListEntity = null,
    Object? responseState = null,
  }) {
    return _then(_value.copyWith(
      characterListEntity: null == characterListEntity
          ? _value.characterListEntity
          : characterListEntity // ignore: cast_nullable_to_non_nullable
              as CharacterListEntity,
      responseState: null == responseState
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as ResponseState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterListEntityCopyWith<$Res> get characterListEntity {
    return $CharacterListEntityCopyWith<$Res>(_value.characterListEntity,
        (value) {
      return _then(_value.copyWith(characterListEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseStateCopyWith<$Res> get responseState {
    return $ResponseStateCopyWith<$Res>(_value.responseState, (value) {
      return _then(_value.copyWith(responseState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterListPageStateCopyWith<$Res>
    implements $CharacterListPageStateCopyWith<$Res> {
  factory _$$_CharacterListPageStateCopyWith(_$_CharacterListPageState value,
          $Res Function(_$_CharacterListPageState) then) =
      __$$_CharacterListPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CharacterListEntity characterListEntity, ResponseState responseState});

  @override
  $CharacterListEntityCopyWith<$Res> get characterListEntity;
  @override
  $ResponseStateCopyWith<$Res> get responseState;
}

/// @nodoc
class __$$_CharacterListPageStateCopyWithImpl<$Res>
    extends _$CharacterListPageStateCopyWithImpl<$Res,
        _$_CharacterListPageState>
    implements _$$_CharacterListPageStateCopyWith<$Res> {
  __$$_CharacterListPageStateCopyWithImpl(_$_CharacterListPageState _value,
      $Res Function(_$_CharacterListPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterListEntity = null,
    Object? responseState = null,
  }) {
    return _then(_$_CharacterListPageState(
      characterListEntity: null == characterListEntity
          ? _value.characterListEntity
          : characterListEntity // ignore: cast_nullable_to_non_nullable
              as CharacterListEntity,
      responseState: null == responseState
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as ResponseState,
    ));
  }
}

/// @nodoc

class _$_CharacterListPageState implements _CharacterListPageState {
  const _$_CharacterListPageState(
      {this.characterListEntity = const CharacterListEntity(),
      this.responseState = const ResponseState.initial()});

  @override
  @JsonKey()
  final CharacterListEntity characterListEntity;
  @override
  @JsonKey()
  final ResponseState responseState;

  @override
  String toString() {
    return 'CharacterListPageState(characterListEntity: $characterListEntity, responseState: $responseState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListPageState &&
            (identical(other.characterListEntity, characterListEntity) ||
                other.characterListEntity == characterListEntity) &&
            (identical(other.responseState, responseState) ||
                other.responseState == responseState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, characterListEntity, responseState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterListPageStateCopyWith<_$_CharacterListPageState> get copyWith =>
      __$$_CharacterListPageStateCopyWithImpl<_$_CharacterListPageState>(
          this, _$identity);
}

abstract class _CharacterListPageState implements CharacterListPageState {
  const factory _CharacterListPageState(
      {final CharacterListEntity characterListEntity,
      final ResponseState responseState}) = _$_CharacterListPageState;

  @override
  CharacterListEntity get characterListEntity;
  @override
  ResponseState get responseState;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListPageStateCopyWith<_$_CharacterListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
