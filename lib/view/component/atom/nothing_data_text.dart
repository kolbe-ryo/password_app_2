import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:password_app_2/constants/style.dart';

class NothingDataText extends StatelessWidget {
  const NothingDataText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kSpacing),
        child: Text(
          'データはありません',
          style: kSecondTextStyle(),
        ),
      ),
    );
  }
}
