// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterDetailPageState {
  CharacterEntity get character => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailPageStateCopyWith<CharacterDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailPageStateCopyWith<$Res> {
  factory $CharacterDetailPageStateCopyWith(CharacterDetailPageState value,
          $Res Function(CharacterDetailPageState) then) =
      _$CharacterDetailPageStateCopyWithImpl<$Res, CharacterDetailPageState>;
  @useResult
  $Res call({CharacterEntity character});

  $CharacterEntityCopyWith<$Res> get character;
}

/// @nodoc
class _$CharacterDetailPageStateCopyWithImpl<$Res,
        $Val extends CharacterDetailPageState>
    implements $CharacterDetailPageStateCopyWith<$Res> {
  _$CharacterDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_value.copyWith(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as CharacterEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterEntityCopyWith<$Res> get character {
    return $CharacterEntityCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterDetailPageStateImplCopyWith<$Res>
    implements $CharacterDetailPageStateCopyWith<$Res> {
  factory _$$CharacterDetailPageStateImplCopyWith(
          _$CharacterDetailPageStateImpl value,
          $Res Function(_$CharacterDetailPageStateImpl) then) =
      __$$CharacterDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterEntity character});

  @override
  $CharacterEntityCopyWith<$Res> get character;
}

/// @nodoc
class __$$CharacterDetailPageStateImplCopyWithImpl<$Res>
    extends _$CharacterDetailPageStateCopyWithImpl<$Res,
        _$CharacterDetailPageStateImpl>
    implements _$$CharacterDetailPageStateImplCopyWith<$Res> {
  __$$CharacterDetailPageStateImplCopyWithImpl(
      _$CharacterDetailPageStateImpl _value,
      $Res Function(_$CharacterDetailPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$CharacterDetailPageStateImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as CharacterEntity,
    ));
  }
}

/// @nodoc

class _$CharacterDetailPageStateImpl implements _CharacterDetailPageState {
  const _$CharacterDetailPageStateImpl(
      {this.character = const CharacterEntity()});

  @override
  @JsonKey()
  final CharacterEntity character;

  @override
  String toString() {
    return 'CharacterDetailPageState(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailPageStateImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailPageStateImplCopyWith<_$CharacterDetailPageStateImpl>
      get copyWith => __$$CharacterDetailPageStateImplCopyWithImpl<
          _$CharacterDetailPageStateImpl>(this, _$identity);
}

abstract class _CharacterDetailPageState implements CharacterDetailPageState {
  const factory _CharacterDetailPageState({final CharacterEntity character}) =
      _$CharacterDetailPageStateImpl;

  @override
  CharacterEntity get character;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailPageStateImplCopyWith<_$CharacterDetailPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
