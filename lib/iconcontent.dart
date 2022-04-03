import 'package:flutter/material.dart';

const klabeltextstyle = TextStyle(fontSize: 18, color: Color(0xff8d8e98));

class iconcontent extends StatelessWidget {
  iconcontent({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: klabeltextstyle,
        )
      ],
    );
  }
}
