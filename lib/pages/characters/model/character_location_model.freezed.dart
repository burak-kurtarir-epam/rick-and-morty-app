// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterLocationModel _$CharacterLocationModelFromJson(
    Map<String, dynamic> json) {
  return _CharacterLocationModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterLocationModel {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterLocationModelCopyWith<CharacterLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationModelCopyWith<$Res> {
  factory $CharacterLocationModelCopyWith(CharacterLocationModel value,
          $Res Function(CharacterLocationModel) then) =
      _$CharacterLocationModelCopyWithImpl<$Res, CharacterLocationModel>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$CharacterLocationModelCopyWithImpl<$Res,
        $Val extends CharacterLocationModel>
    implements $CharacterLocationModelCopyWith<$Res> {
  _$CharacterLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterLocationModelCopyWith<$Res>
    implements $CharacterLocationModelCopyWith<$Res> {
  factory _$$_CharacterLocationModelCopyWith(_$_CharacterLocationModel value,
          $Res Function(_$_CharacterLocationModel) then) =
      __$$_CharacterLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_CharacterLocationModelCopyWithImpl<$Res>
    extends _$CharacterLocationModelCopyWithImpl<$Res,
        _$_CharacterLocationModel>
    implements _$$_CharacterLocationModelCopyWith<$Res> {
  __$$_CharacterLocationModelCopyWithImpl(_$_CharacterLocationModel _value,
      $Res Function(_$_CharacterLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_CharacterLocationModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterLocationModel implements _CharacterLocationModel {
  _$_CharacterLocationModel({this.name, this.url});

  factory _$_CharacterLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterLocationModelFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'CharacterLocationModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterLocationModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterLocationModelCopyWith<_$_CharacterLocationModel> get copyWith =>
      __$$_CharacterLocationModelCopyWithImpl<_$_CharacterLocationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterLocationModelToJson(
      this,
    );
  }
}

abstract class _CharacterLocationModel implements CharacterLocationModel {
  factory _CharacterLocationModel({final String? name, final String? url}) =
      _$_CharacterLocationModel;

  factory _CharacterLocationModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterLocationModel.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterLocationModelCopyWith<_$_CharacterLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
