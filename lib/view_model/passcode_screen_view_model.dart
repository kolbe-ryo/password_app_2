import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/interface/secure_storage_interface.dart';
import 'package:password_app_2/model/local_passcode_model.dart';
import 'package:password_app_2/service/secure_storage_service.dart';

class PasscodeScreenViewModel extends StateNotifier<LocalPasscodeModel> {
  PasscodeScreenViewModel() : super(const LocalPasscodeModel());

  final SecureStorageInterface _interface = SecureStorageService();

  void changePasscode() {}
}
