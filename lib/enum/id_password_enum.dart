enum IdPassword {
  id,
  password,
}

extension IdPasswordExt on IdPassword {
  String get value {
    switch (this) {
      case IdPassword.id:
        return 'ID';
      case IdPassword.password:
        return 'PASS';
    }
  }
}
