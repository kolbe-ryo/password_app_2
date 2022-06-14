import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_passcode_model.freezed.dart';
part 'local_passcode_model.g.dart';

@freezed
class LocalPasscodeModel with _$LocalPasscodeModel {
  const LocalPasscodeModel._();

  const factory LocalPasscodeModel({
    @Default(true) bool initPass,
    @Default(4) int length,
    @Default('0000') String passcode,
  }) = _LocalPasscodeModel;

  factory LocalPasscodeModel.fromJson(Map<String, dynamic> json) =>
      _$LocalPasscodeModelFromJson(json);
}
