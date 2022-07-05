// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:webview_flutter/webview_flutter.dart';

// Project imports:
import '../../../constants/const_letter.dart';
import '../atom/logo_image.dart';

class AboutAppWebview extends StatelessWidget {
  const AboutAppWebview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(),
        centerTitle: true,
        elevation: 0,
      ),
      body: const WebView(initialUrl: aboutAppUrl),
    );
  }
}
