// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Project imports:
import '../../../constants/style.dart';

class TitleText extends StatelessWidget {
  const TitleText(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: title.length > 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title.substring(0, 1),
            style: kFirstTextStyle,
          ),
          const SizedBox(width: 3.0),
          Expanded(
            child: Text(
              title.substring(1),
              overflow: TextOverflow.ellipsis,
              style: kSecondTextStyle(),
            ),
          ),
          const SizedBox(width: 2.0),
        ],
      ),
      replacement: Text(
        title,
        style: kFirstTextStyle,
      ),
    );
  }
}
