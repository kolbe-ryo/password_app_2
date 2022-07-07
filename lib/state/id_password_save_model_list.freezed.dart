// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'id_password_save_model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdPasswordSaveModelList _$IdPasswordSaveModelListFromJson(
    Map<String, dynamic> json) {
  return _IdPasswordSaveModelList.fromJson(json);
}

/// @nodoc
mixin _$IdPasswordSaveModelList {
  List<IdPasswordSaveModel> get modelList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdPasswordSaveModelListCopyWith<IdPasswordSaveModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdPasswordSaveModelListCopyWith<$Res> {
  factory $IdPasswordSaveModelListCopyWith(IdPasswordSaveModelList value,
          $Res Function(IdPasswordSaveModelList) then) =
      _$IdPasswordSaveModelListCopyWithImpl<$Res>;
  $Res call({List<IdPasswordSaveModel> modelList});
}

/// @nodoc
class _$IdPasswordSaveModelListCopyWithImpl<$Res>
    implements $IdPasswordSaveModelListCopyWith<$Res> {
  _$IdPasswordSaveModelListCopyWithImpl(this._value, this._then);

  final IdPasswordSaveModelList _value;
  // ignore: unused_field
  final $Res Function(IdPasswordSaveModelList) _then;

  @override
  $Res call({
    Object? modelList = freezed,
  }) {
    return _then(_value.copyWith(
      modelList: modelList == freezed
          ? _value.modelList
          : modelList // ignore: cast_nullable_to_non_nullable
              as List<IdPasswordSaveModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_IdPasswordSaveModelListCopyWith<$Res>
    implements $IdPasswordSaveModelListCopyWith<$Res> {
  factory _$$_IdPasswordSaveModelListCopyWith(_$_IdPasswordSaveModelList value,
          $Res Function(_$_IdPasswordSaveModelList) then) =
      __$$_IdPasswordSaveModelListCopyWithImpl<$Res>;
  @override
  $Res call({List<IdPasswordSaveModel> modelList});
}

/// @nodoc
class __$$_IdPasswordSaveModelListCopyWithImpl<$Res>
    extends _$IdPasswordSaveModelListCopyWithImpl<$Res>
    implements _$$_IdPasswordSaveModelListCopyWith<$Res> {
  __$$_IdPasswordSaveModelListCopyWithImpl(_$_IdPasswordSaveModelList _value,
      $Res Function(_$_IdPasswordSaveModelList) _then)
      : super(_value, (v) => _then(v as _$_IdPasswordSaveModelList));

  @override
  _$_IdPasswordSaveModelList get _value =>
      super._value as _$_IdPasswordSaveModelList;

  @override
  $Res call({
    Object? modelList = freezed,
  }) {
    return _then(_$_IdPasswordSaveModelList(
      modelList: modelList == freezed
          ? _value._modelList
          : modelList // ignore: cast_nullable_to_non_nullable
              as List<IdPasswordSaveModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdPasswordSaveModelList implements _IdPasswordSaveModelList {
  const _$_IdPasswordSaveModelList(
      {final List<IdPasswordSaveModel> modelList = const []})
      : _modelList = modelList;

  factory _$_IdPasswordSaveModelList.fromJson(Map<String, dynamic> json) =>
      _$$_IdPasswordSaveModelListFromJson(json);

  final List<IdPasswordSaveModel> _modelList;
  @override
  @JsonKey()
  List<IdPasswordSaveModel> get modelList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelList);
  }

  @override
  String toString() {
    return 'IdPasswordSaveModelList(modelList: $modelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdPasswordSaveModelList &&
            const DeepCollectionEquality()
                .equals(other._modelList, _modelList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_modelList));

  @JsonKey(ignore: true)
  @override
  _$$_IdPasswordSaveModelListCopyWith<_$_IdPasswordSaveModelList>
      get copyWith =>
          __$$_IdPasswordSaveModelListCopyWithImpl<_$_IdPasswordSaveModelList>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdPasswordSaveModelListToJson(this);
  }
}

abstract class _IdPasswordSaveModelList implements IdPasswordSaveModelList {
  const factory _IdPasswordSaveModelList(
      {final List<IdPasswordSaveModel> modelList}) = _$_IdPasswordSaveModelList;

  factory _IdPasswordSaveModelList.fromJson(Map<String, dynamic> json) =
      _$_IdPasswordSaveModelList.fromJson;

  @override
  List<IdPasswordSaveModel> get modelList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IdPasswordSaveModelListCopyWith<_$_IdPasswordSaveModelList>
      get copyWith => throw _privateConstructorUsedError;
}
