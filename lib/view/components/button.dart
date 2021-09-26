import 'package:flutter/material.dart';
import 'package:ptappmobile/view/login/intro_view.dart';


class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        primary: Colors.transparent,
        minimumSize: Size(88, 36),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))));

    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IntroPage()),
          );
        },
        child: Text(
          'Skip',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        style: flatButtonStyle,
      ),
    );
  }
}
