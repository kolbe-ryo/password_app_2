// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_passcode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalPasscordModel _$LocalPasscordModelFromJson(Map<String, dynamic> json) {
  return _LocalPasscordModel.fromJson(json);
}

/// @nodoc
mixin _$LocalPasscordModel {
  int get length => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalPasscordModelCopyWith<LocalPasscordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalPasscordModelCopyWith<$Res> {
  factory $LocalPasscordModelCopyWith(
          LocalPasscordModel value, $Res Function(LocalPasscordModel) then) =
      _$LocalPasscordModelCopyWithImpl<$Res>;
  $Res call({int length, String passcode});
}

/// @nodoc
class _$LocalPasscordModelCopyWithImpl<$Res>
    implements $LocalPasscordModelCopyWith<$Res> {
  _$LocalPasscordModelCopyWithImpl(this._value, this._then);

  final LocalPasscordModel _value;
  // ignore: unused_field
  final $Res Function(LocalPasscordModel) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? passcode = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      passcode: passcode == freezed
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalPasscordModelCopyWith<$Res>
    implements $LocalPasscordModelCopyWith<$Res> {
  factory _$$_LocalPasscordModelCopyWith(_$_LocalPasscordModel value,
          $Res Function(_$_LocalPasscordModel) then) =
      __$$_LocalPasscordModelCopyWithImpl<$Res>;
  @override
  $Res call({int length, String passcode});
}

/// @nodoc
class __$$_LocalPasscordModelCopyWithImpl<$Res>
    extends _$LocalPasscordModelCopyWithImpl<$Res>
    implements _$$_LocalPasscordModelCopyWith<$Res> {
  __$$_LocalPasscordModelCopyWithImpl(
      _$_LocalPasscordModel _value, $Res Function(_$_LocalPasscordModel) _then)
      : super(_value, (v) => _then(v as _$_LocalPasscordModel));

  @override
  _$_LocalPasscordModel get _value => super._value as _$_LocalPasscordModel;

  @override
  $Res call({
    Object? length = freezed,
    Object? passcode = freezed,
  }) {
    return _then(_$_LocalPasscordModel(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      passcode: passcode == freezed
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalPasscordModel extends _LocalPasscordModel {
  const _$_LocalPasscordModel({this.length = 4, this.passcode = '0000'})
      : super._();

  factory _$_LocalPasscordModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocalPasscordModelFromJson(json);

  @override
  @JsonKey()
  final int length;
  @override
  @JsonKey()
  final String passcode;

  @override
  String toString() {
    return 'LocalPasscordModel(length: $length, passcode: $passcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalPasscordModel &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.passcode, passcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(passcode));

  @JsonKey(ignore: true)
  @override
  _$$_LocalPasscordModelCopyWith<_$_LocalPasscordModel> get copyWith =>
      __$$_LocalPasscordModelCopyWithImpl<_$_LocalPasscordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalPasscordModelToJson(this);
  }
}

abstract class _LocalPasscordModel extends LocalPasscordModel {
  const factory _LocalPasscordModel({final int length, final String passcode}) =
      _$_LocalPasscordModel;
  const _LocalPasscordModel._() : super._();

  factory _LocalPasscordModel.fromJson(Map<String, dynamic> json) =
      _$_LocalPasscordModel.fromJson;

  @override
  int get length => throw _privateConstructorUsedError;
  @override
  String get passcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalPasscordModelCopyWith<_$_LocalPasscordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
