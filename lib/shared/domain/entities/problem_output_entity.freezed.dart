// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_output_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProblemOutputEntity {
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProblemOutputEntityCopyWith<ProblemOutputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemOutputEntityCopyWith<$Res> {
  factory $ProblemOutputEntityCopyWith(
          ProblemOutputEntity value, $Res Function(ProblemOutputEntity) then) =
      _$ProblemOutputEntityCopyWithImpl<$Res, ProblemOutputEntity>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ProblemOutputEntityCopyWithImpl<$Res, $Val extends ProblemOutputEntity>
    implements $ProblemOutputEntityCopyWith<$Res> {
  _$ProblemOutputEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProblemOutputEntityImplCopyWith<$Res>
    implements $ProblemOutputEntityCopyWith<$Res> {
  factory _$$ProblemOutputEntityImplCopyWith(_$ProblemOutputEntityImpl value,
          $Res Function(_$ProblemOutputEntityImpl) then) =
      __$$ProblemOutputEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProblemOutputEntityImplCopyWithImpl<$Res>
    extends _$ProblemOutputEntityCopyWithImpl<$Res, _$ProblemOutputEntityImpl>
    implements _$$ProblemOutputEntityImplCopyWith<$Res> {
  __$$ProblemOutputEntityImplCopyWithImpl(_$ProblemOutputEntityImpl _value,
      $Res Function(_$ProblemOutputEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProblemOutputEntityImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProblemOutputEntityImpl implements _ProblemOutputEntity {
  const _$ProblemOutputEntityImpl({this.error = ''});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ProblemOutputEntity(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProblemOutputEntityImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProblemOutputEntityImplCopyWith<_$ProblemOutputEntityImpl> get copyWith =>
      __$$ProblemOutputEntityImplCopyWithImpl<_$ProblemOutputEntityImpl>(
          this, _$identity);
}

abstract class _ProblemOutputEntity implements ProblemOutputEntity {
  const factory _ProblemOutputEntity({final String error}) =
      _$ProblemOutputEntityImpl;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ProblemOutputEntityImplCopyWith<_$ProblemOutputEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
