import 'package:flutter/material.dart';

class ButtonAccount extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonAccount({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 12,
          ),
          shape: StadiumBorder(),
          onPrimary: Colors.black87,
        ),
        onPressed: onClicked,
        child: Text(text),
      );
}
