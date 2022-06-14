// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_passcode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalPasscodeModel _$$_LocalPasscodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_LocalPasscodeModel(
      initPass: json['initPass'] as bool? ?? true,
      length: json['length'] as int? ?? 4,
      passcode: json['passcode'] as String? ?? '0000',
    );

Map<String, dynamic> _$$_LocalPasscodeModelToJson(
        _$_LocalPasscodeModel instance) =>
    <String, dynamic>{
      'initPass': instance.initPass,
      'length': instance.length,
      'passcode': instance.passcode,
    };
