// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class InputTileAbstract extends ConsumerWidget {
  const InputTileAbstract({Key? key}) : super(key: key);

  Widget generalListTile(BuildContext context);
  Widget textField(BuildContext context, WidgetRef ref);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        generalListTile(context),
        textField(context, ref),
      ],
    );
  }
}
