import 'package:flutter/material.dart';
import 'package:password_app_2/view/local_login_page.dart';
import 'package:password_app_2/view/selection_page.dart';

class LifeCycleDetectionPage extends StatefulWidget {
  const LifeCycleDetectionPage({Key? key}) : super(key: key);

  @override
  State<LifeCycleDetectionPage> createState() => _LifeCycleDetectionPageState();
}

class _LifeCycleDetectionPageState extends State<LifeCycleDetectionPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
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
    return const SelectionPage();
  }
}
