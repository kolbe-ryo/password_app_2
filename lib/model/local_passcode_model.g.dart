// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_passcode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalPasscordModel _$$_LocalPasscordModelFromJson(
        Map<String, dynamic> json) =>
    _$_LocalPasscordModel(
      length: json['length'] as int? ?? 4,
      passcode: json['passcode'] as String? ?? '0000',
    );

Map<String, dynamic> _$$_LocalPasscordModelToJson(
        _$_LocalPasscordModel instance) =>
    <String, dynamic>{
      'length': instance.length,
      'passcode': instance.passcode,
    };
