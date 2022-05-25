import 'package:flutter/material.dart';

class CopyButton extends StatelessWidget {
  const CopyButton(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(primary: Colors.teal),
    );
  }
}
