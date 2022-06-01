import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_password_save_model.freezed.dart';
part 'id_password_save_model.g.dart';

@freezed
class IdPasswordSaveModel with _$IdPasswordSaveModel {
  const IdPasswordSaveModel._();

  const factory IdPasswordSaveModel({
    @Default('') String name,
    @Default('') String id,
    @Default('') String password,
    @Default(0) int genre,
    @Default('') String memo,
    required DateTime time,
  }) = _IdPasswordSaveModel;

  factory IdPasswordSaveModel.fromJson(Map<String, dynamic> json) =>
      _$IdPasswordSaveModelFromJson(json);
}
