// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../selection_page.dart';
import '../atom/logo_image.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              ref.watch(isBottomNavigation.notifier).update((state) => true);
              Navigator.pop(context);
            },
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: LogoImage(),
        ),
      ],
    );
  }
}
