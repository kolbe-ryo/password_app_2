import 'package:flutter/material.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/util/local_auth.dart';
import 'package:password_app_2/view/selection_page.dart';

class LocalLoginPage extends StatelessWidget {
  const LocalLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () async {
            final isAuthenticated = await LocalAuth.authenticate();
            if (isAuthenticated) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => const SelectionPage()),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
