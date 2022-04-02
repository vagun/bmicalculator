import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('BMI CALCULATOR')),
          backgroundColor: Color(0xff1d1e33),
        ),
        body: Column(
          children:  <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: reusablecard(colour: Color(0xff1d1e33),)),
                Expanded(child: reusablecard(colour: Color(0xff1d1e33),))
              ],
            )),
            Expanded(child: reusablecard(colour: Color(0xff1d1e33),)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: reusablecard(colour: Color(0xff1d1e33),)),
                Expanded(child: reusablecard(colour: Color(0xff1d1e33),))
              ],
            )),
          ],
        ));
  }
}

class reusablecard extends StatelessWidget {
 const reusablecard({required this.colour });
 final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10)),
      height: 200,
      width: 170,
    );
  }
}
