import 'package:flutter/material.dart';

class InputTile extends StatelessWidget {
  const InputTile({
    Key? key,
    required this.caption,
    required this.hintText,
  }) : super(key: key);

  final String caption;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(caption),
        ),
        TextField(),
      ],
    );
  }
}
