// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import '../../../constants/style.dart';

class NothingDataText extends StatelessWidget {
  const NothingDataText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kSpacing),
        child: Text(
          AppLocalizations.of(context)!.no_data,
          style: kCaptionTextStyle,
        ),
      ),
    );
  }
}
