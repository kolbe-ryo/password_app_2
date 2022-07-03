// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'local_login_page.dart';
import 'selection_page.dart';

class LifeCycleDetectionPage extends StatefulWidget {
  const LifeCycleDetectionPage({Key? key}) : super(key: key);

  @override
  State<LifeCycleDetectionPage> createState() => _LifeCycleDetectionPageState();
}

class _LifeCycleDetectionPageState extends State<LifeCycleDetectionPage> with WidgetsBindingObserver {
  final WidgetsBinding _widgetsBinding = WidgetsBinding.instance;

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
        if (mounted) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: ((context) => const LocalLoginPage()),
            ),
            (route) => false,
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
    return SelectionPage();
  }
}
