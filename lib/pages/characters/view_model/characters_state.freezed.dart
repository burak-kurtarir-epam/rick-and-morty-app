// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersState {
  List<CharacterModel> get characters => throw _privateConstructorUsedError;
  ResponseState get responseState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharactersStateCopyWith<CharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
  @useResult
  $Res call({List<CharacterModel> characters, ResponseState responseState});
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? responseState = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      responseState: null == responseState
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as ResponseState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharactersStateCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$_CharactersStateCopyWith(
          _$_CharactersState value, $Res Function(_$_CharactersState) then) =
      __$$_CharactersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterModel> characters, ResponseState responseState});
}

/// @nodoc
class __$$_CharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$_CharactersState>
    implements _$$_CharactersStateCopyWith<$Res> {
  __$$_CharactersStateCopyWithImpl(
      _$_CharactersState _value, $Res Function(_$_CharactersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? responseState = null,
  }) {
    return _then(_$_CharactersState(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      responseState: null == responseState
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as ResponseState,
    ));
  }
}

/// @nodoc

class _$_CharactersState implements _CharactersState {
  _$_CharactersState(
      {required final List<CharacterModel> characters,
      required this.responseState})
      : _characters = characters;

  final List<CharacterModel> _characters;
  @override
  List<CharacterModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final ResponseState responseState;

  @override
  String toString() {
    return 'CharactersState(characters: $characters, responseState: $responseState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.responseState, responseState) ||
                other.responseState == responseState));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), responseState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersStateCopyWith<_$_CharactersState> get copyWith =>
      __$$_CharactersStateCopyWithImpl<_$_CharactersState>(this, _$identity);
}

abstract class _CharactersState implements CharactersState {
  factory _CharactersState(
      {required final List<CharacterModel> characters,
      required final ResponseState responseState}) = _$_CharactersState;

  @override
  List<CharacterModel> get characters;
  @override
  ResponseState get responseState;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersStateCopyWith<_$_CharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}
