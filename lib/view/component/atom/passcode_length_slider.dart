// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../settings_page/change_passcord_page.dart';

class PasscodeLengthSlider extends ConsumerWidget {
  const PasscodeLengthSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slider(
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.blueAccent.withOpacity(0.2),
      thumbColor: Colors.blueAccent,
      value: ref.watch(passcodeLengthProvider.state).state.toDouble(),
      label: ref.watch(passcodeLengthProvider.state).state.toString(),
      min: 4,
      max: 8,
      divisions: 4,
      onChanged: (value) => ref.read(passcodeLengthProvider.state).update((state) => value.toInt()),
    );
  }
}
