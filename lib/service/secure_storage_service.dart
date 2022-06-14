import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/interface/secure_storage_interface.dart';
import 'package:password_app_2/model/local_passcode_model.dart';
import 'package:password_app_2/state/id_password_save_model_list.dart';

class SecureStorageService implements SecureStorageInterface {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  @override
  Future<IdPasswordSaveModelList?> get() async {
    String? value = await _storage.read(key: storageKey);
    return value != null
        ? IdPasswordSaveModelList.fromJson(json.decode(value))
        : null;
  }

  @override
  Future<void> save(IdPasswordSaveModelList value) async {
    final jsonText = json.encode(value.toJson());
    await _storage.write(key: storageKey, value: jsonText);
  }

  @override
  Future<void> deleteAll() async {
    _storage.deleteAll();
  }

  @override
  Future<LocalPasscodeModel?> getPasscode() async {
    String? value = await _storage.read(key: passcordKey);
    return value != null
        ? LocalPasscodeModel.fromJson(json.decode(value))
        : null;
  }

  @override
  Future<void> savePasscode(LocalPasscodeModel value) async {
    final jsonText = json.encode(value.toJson());
    await _storage.write(key: passcordKey, value: jsonText);
  }
}
