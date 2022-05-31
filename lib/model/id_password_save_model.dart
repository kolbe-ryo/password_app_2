import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_password_save_model.freezed.dart';
part 'id_password_save_model.g.dart';

@freezed
class IdPasswordSaveModel with _$IdPasswordSaveModel {
  @JsonSerializable(explicitToJson: true)
  const IdPasswordSaveModel._();

  const factory IdPasswordSaveModel({
    required String name,
    required String id,
    required String password,
    required int genre,
    required String memo,
    required DateTime time,
  }) = _IdPasswordSaveModel;

  factory IdPasswordSaveModel.fromJson(Map<String, dynamic> json) =>
      _$IdPasswordSaveModelFromJson(json);
}
