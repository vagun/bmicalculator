import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class Bottombutton extends StatelessWidget {
  Bottombutton({required this.onpress,required this.text});
  final VoidCallback onpress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: klargebuttontextstyle,
        )),
        color: kbottomcontainercolour,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        height: kbottomcontainerheight,
        width: double.infinity,
      ),
    );
  }
}