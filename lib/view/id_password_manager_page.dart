import 'package:flutter/material.dart';

class IdPasswordManagerPage extends StatelessWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ID / PASSWORD'),
        ),
        body: Text('Manager'));
  }
}
