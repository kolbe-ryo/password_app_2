// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_password_save_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdPasswordSaveModel _$$_IdPasswordSaveModelFromJson(
        Map<String, dynamic> json) =>
    _$_IdPasswordSaveModel(
      name: json['name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      password: json['password'] as String? ?? '',
      genre: json['genre'] as int? ?? 0,
      memo: json['memo'] as String? ?? '',
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_IdPasswordSaveModelToJson(
        _$_IdPasswordSaveModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'password': instance.password,
      'genre': instance.genre,
      'memo': instance.memo,
      'time': instance.time.toIso8601String(),
    };
