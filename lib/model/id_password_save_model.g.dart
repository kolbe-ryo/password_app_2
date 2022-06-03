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
      genre: $enumDecodeNullable(_$GenreDataEnumEnumMap, json['genre']) ??
          GenreDataEnum.money,
      memo: json['memo'] as String? ?? '',
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_IdPasswordSaveModelToJson(
        _$_IdPasswordSaveModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'password': instance.password,
      'genre': _$GenreDataEnumEnumMap[instance.genre],
      'memo': instance.memo,
      'time': instance.time.toIso8601String(),
    };

const _$GenreDataEnumEnumMap = {
  GenreDataEnum.money: 0,
  GenreDataEnum.shopping: 1,
  GenreDataEnum.transportation: 2,
  GenreDataEnum.sns: 3,
  GenreDataEnum.entertainment: 4,
  GenreDataEnum.others: 5,
};
