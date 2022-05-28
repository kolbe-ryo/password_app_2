import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/component/molecules/notification_toast.dart';

class CopyButton extends StatelessWidget {
  const CopyButton(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: kCopyButtonTextStyle,
      ),
      onPressed: () async {
        // クリップボードにコピーする
        // TODO ストレージからコピーする処理
        final copyData = ClipboardData(text: "hogehoge");
        await Clipboard.setData(copyData);

        // トースト表示
        NotificationToast.showToast();
      },
      style: ElevatedButton.styleFrom(primary: Colors.teal),
    );
  }
}
