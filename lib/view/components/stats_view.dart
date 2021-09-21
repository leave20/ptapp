import 'package:flutter/material.dart';

class StatsAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(context, '10', 'Rutas'),
          buildDivider(),
          buildButton(context, '10', 'Rutas'),
          buildDivider(),
          buildButton(context, '10', 'Rutas')
        ],
      ),
    );
  }

  Widget buildDivider() => Container(
        height: 20,
        child: VerticalDivider(
          color: Colors.white,
        ),
      );
}

Widget buildButton(BuildContext context, String value, String text) =>
    MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white30),
          ),
        ],
      ),
    );
