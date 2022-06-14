import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/component/atom/general_list_tile.dart';
import 'package:password_app_2/view/component/atom/passcode_length_slider.dart';
import 'package:password_app_2/view/component/organisms/change_passcode_screen.dart';
import 'package:password_app_2/view/component/organisms/passcode_screen.dart';

final passcodeLengthProvider = StateProvider<int>(
    ((ref) => ref.watch(passcodeProvider.select((state) => state.length))));

class ChangePasscord extends ConsumerWidget {
  const ChangePasscord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('パスコード設定'),
        iconTheme: const IconThemeData(
          color: kGreyColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpacing),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(top: kSpacing),
              title: Text(
                '長さ',
                style: kCaptionTextStyle,
              ),
              trailing: Text(
                ref.watch(passcodeLengthProvider.state).state.toString(),
                style: kCaptionTextStyle,
              ),
            ),
            const PasscodeLengthSlider(),
            GeneralListTile('変更'),
            ElevatedButton(
              onPressed: () => _pushForChangePasscode(context, false),
              child: Icon(Icons.apps),
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
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ChangePasscodeScreen(),
      ),
    );
  }
}
