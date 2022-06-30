// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../../constants/style.dart';
import 'notification_toast.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({
    Key? key,
    required this.title,
    required this.idPass,
    required this.color,
  }) : super(key: key);

  final String title;
  final String idPass;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: kCopyButtonTextStyle,
      ),
      onPressed: () async {
        // クリップボードにコピーする
        final copyData = ClipboardData(text: idPass);
        await Clipboard.setData(copyData);

        // トースト表示
        NotificationToast.showToast(context);
      },
      style: ElevatedButton.styleFrom(primary: color),
    );
  }
}
