// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_password_save_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdPasswordSaveModelList _$$_IdPasswordSaveModelListFromJson(
        Map<String, dynamic> json) =>
    _$_IdPasswordSaveModelList(
      modelList: (json['modelList'] as List<dynamic>?)
              ?.map((e) =>
                  IdPasswordSaveModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_IdPasswordSaveModelListToJson(
        _$_IdPasswordSaveModelList instance) =>
    <String, dynamic>{
      'modelList': instance.modelList,
    };
