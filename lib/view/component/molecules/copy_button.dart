import 'package:flutter/material.dart';
import 'package:password_app_2/view/component/molecules/notification_toast.dart';

class CopyButton extends StatelessWidget {
  const CopyButton(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
      onPressed: () {
        // クリップボードにコピーする
        // トースト表示
        NotificationToast.showToast();
      },
      style: ElevatedButton.styleFrom(primary: Colors.teal),
    );
  }
}
