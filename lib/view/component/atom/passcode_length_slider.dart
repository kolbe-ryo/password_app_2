import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/view/component/organisms/passcode_screen.dart';

class PasscodeLengthSlider extends ConsumerWidget {
  const PasscodeLengthSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slider(
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.blueAccent.withOpacity(0.5),
      thumbColor: Colors.blueAccent,
      value: ref
          .watch(passcodeProvider.select((state) => state.length))
          .toDouble(),
      min: 4,
      max: 8,
      divisions: 4,
      onChanged: (value) =>
          ref.read(passcodeProvider.notifier).changeLength(value.toInt()),
    );
  }
}
