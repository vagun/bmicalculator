import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kactivecardcolour = Color(0xff1d1e33);
const kbottomcontainercolour = Color(0xffeb1555);
const kbottomcontainerheight = 80.0;

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
          backgroundColor: kactivecardcolour,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: reusablecard(
                  colour: kactivecardcolour,
                  cardchild: iconcontent(icon: FontAwesomeIcons.mars,label: 'Male',),
                )),
                Expanded(
                    child: reusablecard(
                  colour: kactivecardcolour,
                  cardchild: iconcontent(icon: FontAwesomeIcons.venus,label: 'Female',) ,
                ))
              ],
            )),
            Expanded(
                child: reusablecard(
              colour: kactivecardcolour,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: reusablecard(
                  colour: kactivecardcolour,
                )),
                Expanded(
                    child: reusablecard(
                  colour: kactivecardcolour,
                ))
              ],
            )),
            Container(
              color: kbottomcontainercolour,
              margin: EdgeInsets.only(top: 10),
              height: kbottomcontainerheight,
              width: double.infinity,
            )
          ],
        ));
  }
}

class iconcontent extends StatelessWidget {
  iconcontent({required this.icon,required this.label});
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
        SizedBox(height: 15.0,),
        Text(label,style: TextStyle(fontSize: 18,color: Color(0xff8d8e98)),)
      ],
    );
  }
}

class reusablecard extends StatelessWidget {
  const reusablecard({required this.colour, this.cardchild});
  final Color colour;
  final Widget? cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      height: 200,
      width: 170,
    );
  }
}
