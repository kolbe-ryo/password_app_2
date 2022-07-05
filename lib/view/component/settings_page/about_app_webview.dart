import 'package:flutter/material.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/view/component/atom/logo_image.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
