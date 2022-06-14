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

LocalPasscodeModel _$LocalPasscodeModelFromJson(Map<String, dynamic> json) {
  return _LocalPasscodeModel.fromJson(json);
}

/// @nodoc
mixin _$LocalPasscodeModel {
  bool get initPass => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalPasscodeModelCopyWith<LocalPasscodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalPasscodeModelCopyWith<$Res> {
  factory $LocalPasscodeModelCopyWith(
          LocalPasscodeModel value, $Res Function(LocalPasscodeModel) then) =
      _$LocalPasscodeModelCopyWithImpl<$Res>;
  $Res call({bool initPass, int length, String passcode});
}

/// @nodoc
class _$LocalPasscodeModelCopyWithImpl<$Res>
    implements $LocalPasscodeModelCopyWith<$Res> {
  _$LocalPasscodeModelCopyWithImpl(this._value, this._then);

  final LocalPasscodeModel _value;
  // ignore: unused_field
  final $Res Function(LocalPasscodeModel) _then;

  @override
  $Res call({
    Object? initPass = freezed,
    Object? length = freezed,
    Object? passcode = freezed,
  }) {
    return _then(_value.copyWith(
      initPass: initPass == freezed
          ? _value.initPass
          : initPass // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_LocalPasscodeModelCopyWith<$Res>
    implements $LocalPasscodeModelCopyWith<$Res> {
  factory _$$_LocalPasscodeModelCopyWith(_$_LocalPasscodeModel value,
          $Res Function(_$_LocalPasscodeModel) then) =
      __$$_LocalPasscodeModelCopyWithImpl<$Res>;
  @override
  $Res call({bool initPass, int length, String passcode});
}

/// @nodoc
class __$$_LocalPasscodeModelCopyWithImpl<$Res>
    extends _$LocalPasscodeModelCopyWithImpl<$Res>
    implements _$$_LocalPasscodeModelCopyWith<$Res> {
  __$$_LocalPasscodeModelCopyWithImpl(
      _$_LocalPasscodeModel _value, $Res Function(_$_LocalPasscodeModel) _then)
      : super(_value, (v) => _then(v as _$_LocalPasscodeModel));

  @override
  _$_LocalPasscodeModel get _value => super._value as _$_LocalPasscodeModel;

  @override
  $Res call({
    Object? initPass = freezed,
    Object? length = freezed,
    Object? passcode = freezed,
  }) {
    return _then(_$_LocalPasscodeModel(
      initPass: initPass == freezed
          ? _value.initPass
          : initPass // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_LocalPasscodeModel extends _LocalPasscodeModel {
  const _$_LocalPasscodeModel(
      {this.initPass = true, this.length = 4, this.passcode = '0000'})
      : super._();

  factory _$_LocalPasscodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocalPasscodeModelFromJson(json);

  @override
  @JsonKey()
  final bool initPass;
  @override
  @JsonKey()
  final int length;
  @override
  @JsonKey()
  final String passcode;

  @override
  String toString() {
    return 'LocalPasscodeModel(initPass: $initPass, length: $length, passcode: $passcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalPasscodeModel &&
            const DeepCollectionEquality().equals(other.initPass, initPass) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.passcode, passcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initPass),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(passcode));

  @JsonKey(ignore: true)
  @override
  _$$_LocalPasscodeModelCopyWith<_$_LocalPasscodeModel> get copyWith =>
      __$$_LocalPasscodeModelCopyWithImpl<_$_LocalPasscodeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalPasscodeModelToJson(this);
  }
}

abstract class _LocalPasscodeModel extends LocalPasscodeModel {
  const factory _LocalPasscodeModel(
      {final bool initPass,
      final int length,
      final String passcode}) = _$_LocalPasscodeModel;
  const _LocalPasscodeModel._() : super._();

  factory _LocalPasscodeModel.fromJson(Map<String, dynamic> json) =
      _$_LocalPasscodeModel.fromJson;

  @override
  bool get initPass => throw _privateConstructorUsedError;
  @override
  int get length => throw _privateConstructorUsedError;
  @override
  String get passcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalPasscodeModelCopyWith<_$_LocalPasscodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
