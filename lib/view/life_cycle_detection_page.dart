// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'local_login_page.dart';
import 'selection_page.dart';

// Re-Lock state for controlling life cycle state method(state.inactive)
final isReLockProvider = StateProvider<bool>(((ref) => false));

class LifeCycleDetectionPage extends ConsumerStatefulWidget {
  const LifeCycleDetectionPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LifeCycleDetectionPageState();
}

class _LifeCycleDetectionPageState extends ConsumerState<LifeCycleDetectionPage> with WidgetsBindingObserver {
  final WidgetsBinding _widgetsBinding = WidgetsBinding.instance!;

  @override
  void initState() {
    super.initState();
    _widgetsBinding.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    _widgetsBinding.removeObserver(this);
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        bool _isReLock = ref.read(isReLockProvider);
        if (mounted && _isReLock) {
          ref.read(isReLockProvider.notifier).update((state) => !state);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => LocalLoginPage(_isReLock)),
            ),
          );
        }
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SelectionPage();
  }
}
