import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/interface/secure_storage_interface.dart';
import 'package:password_app_2/model/local_passcode_model.dart';
import 'package:password_app_2/service/secure_storage_service.dart';

class PasscodeViewModel extends StateNotifier<LocalPasscodeModel> {
  PasscodeViewModel() : super(const LocalPasscodeModel());

  final SecureStorageInterface _interface = SecureStorageService();

  Future<void> get() async {
    final data = await _interface.getPasscode();
    state = data ?? state;
  }

  void changeLength(int length) {
    state = state.copyWith(length: length);
  }

  // 初期設定から変更があった場合、
  Future<void> changePasscode(int length, String passcode) async {
    state = state.copyWith(initPass: false, length: length, passcode: passcode);
    await _interface.savePasscode(state);
  }
}
