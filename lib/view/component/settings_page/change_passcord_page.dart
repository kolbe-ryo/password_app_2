// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../atom/passcode_length_slider.dart';
import '../organisms/change_passcode_screen.dart';
import '../organisms/passcode_screen.dart';

final passcodeLengthProvider =
    StateProvider<int>(((ref) => ref.watch(passcodeProvider.select((state) => state.length))));

class ChangePasscord extends ConsumerWidget {
  const ChangePasscord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.change_passcode)),
      body: Padding(
        padding: const EdgeInsets.all(kSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: kSpacing / 2,
              children: Iterable<int>.generate(
                ref.watch(passcodeLengthProvider.state).state.toInt(),
              )
                  .map((e) => const Icon(
                        Icons.circle_outlined,
                        size: 30,
                        color: Colors.blueGrey,
                      ))
                  .toList(),
            ),
            const SizedBox(height: kSpacing),
            const PasscodeLengthSlider(),
            const SizedBox(height: kSpacing),
            TextButton(
              onPressed: () => _pushForChangePasscode(context, false),
              child: Text(
                AppLocalizations.of(context)!.change_button,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pushForChangePasscode(BuildContext context, bool opaque) async {
    await Navigator.push(
      context,
      PageRouteBuilder(
        opaque: opaque,
        pageBuilder: (context, animation, secondaryAnimation) => const ChangePasscodeScreen(),
      ),
    );
  }
}
