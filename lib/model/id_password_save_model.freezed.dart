// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'id_password_save_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdPasswordSaveModel _$IdPasswordSaveModelFromJson(Map<String, dynamic> json) {
  return _IdPasswordSaveModel.fromJson(json);
}

/// @nodoc
mixin _$IdPasswordSaveModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre')
  int get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'memo')
  String get memo => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdPasswordSaveModelCopyWith<IdPasswordSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdPasswordSaveModelCopyWith<$Res> {
  factory $IdPasswordSaveModelCopyWith(
          IdPasswordSaveModel value, $Res Function(IdPasswordSaveModel) then) =
      _$IdPasswordSaveModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'genre') int genre,
      @JsonKey(name: 'memo') String memo,
      @JsonKey(name: 'time') DateTime time});
}

/// @nodoc
class _$IdPasswordSaveModelCopyWithImpl<$Res>
    implements $IdPasswordSaveModelCopyWith<$Res> {
  _$IdPasswordSaveModelCopyWithImpl(this._value, this._then);

  final IdPasswordSaveModel _value;
  // ignore: unused_field
  final $Res Function(IdPasswordSaveModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? password = freezed,
    Object? genre = freezed,
    Object? memo = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as int,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_IdPasswordSaveModelCopyWith<$Res>
    implements $IdPasswordSaveModelCopyWith<$Res> {
  factory _$$_IdPasswordSaveModelCopyWith(_$_IdPasswordSaveModel value,
          $Res Function(_$_IdPasswordSaveModel) then) =
      __$$_IdPasswordSaveModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'genre') int genre,
      @JsonKey(name: 'memo') String memo,
      @JsonKey(name: 'time') DateTime time});
}

/// @nodoc
class __$$_IdPasswordSaveModelCopyWithImpl<$Res>
    extends _$IdPasswordSaveModelCopyWithImpl<$Res>
    implements _$$_IdPasswordSaveModelCopyWith<$Res> {
  __$$_IdPasswordSaveModelCopyWithImpl(_$_IdPasswordSaveModel _value,
      $Res Function(_$_IdPasswordSaveModel) _then)
      : super(_value, (v) => _then(v as _$_IdPasswordSaveModel));

  @override
  _$_IdPasswordSaveModel get _value => super._value as _$_IdPasswordSaveModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? password = freezed,
    Object? genre = freezed,
    Object? memo = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_IdPasswordSaveModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as int,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdPasswordSaveModel extends _IdPasswordSaveModel {
  const _$_IdPasswordSaveModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'genre') required this.genre,
      @JsonKey(name: 'memo') required this.memo,
      @JsonKey(name: 'time') required this.time})
      : super._();

  factory _$_IdPasswordSaveModel.fromJson(Map<String, dynamic> json) =>
      _$$_IdPasswordSaveModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'genre')
  final int genre;
  @override
  @JsonKey(name: 'memo')
  final String memo;
  @override
  @JsonKey(name: 'time')
  final DateTime time;

  @override
  String toString() {
    return 'IdPasswordSaveModel(name: $name, id: $id, password: $password, genre: $genre, memo: $memo, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdPasswordSaveModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_IdPasswordSaveModelCopyWith<_$_IdPasswordSaveModel> get copyWith =>
      __$$_IdPasswordSaveModelCopyWithImpl<_$_IdPasswordSaveModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdPasswordSaveModelToJson(this);
  }
}

abstract class _IdPasswordSaveModel extends IdPasswordSaveModel {
  const factory _IdPasswordSaveModel(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'password') required final String password,
          @JsonKey(name: 'genre') required final int genre,
          @JsonKey(name: 'memo') required final String memo,
          @JsonKey(name: 'time') required final DateTime time}) =
      _$_IdPasswordSaveModel;
  const _IdPasswordSaveModel._() : super._();

  factory _IdPasswordSaveModel.fromJson(Map<String, dynamic> json) =
      _$_IdPasswordSaveModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'genre')
  int get genre => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'memo')
  String get memo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'time')
  DateTime get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IdPasswordSaveModelCopyWith<_$_IdPasswordSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}
