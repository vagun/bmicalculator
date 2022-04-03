import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import 'reusablecard.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 180;
  Color malecardcolour = kinactivecardcolour;
  Color femalecardcolour = kinactivecardcolour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('BMI CALCULATOR')),
          backgroundColor: kactivecardcolour,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: reusablecard(
                  onPress: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  colour: selectedgender == Gender.male
                      ? kactivecardcolour
                      : kinactivecardcolour,
                  cardchild: iconcontent(
                    icon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                )),
                Expanded(
                    child: reusablecard(
                  onPress: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  colour: selectedgender == Gender.female
                      ? kactivecardcolour
                      : kinactivecardcolour,
                  cardchild: iconcontent(
                    icon: FontAwesomeIcons.venus,
                    label: 'Female',
                  ),
                ))
              ],
            )),
            Expanded(
                child: reusablecard(
              colour: kactivecardcolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: klabeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: knumbertextstyle,
                      ),
                      Text(
                        'cm',
                        style: klabeltextstyle,
                      ),
                      
                    ],
                  ),
                  Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xffeb1555),
                        inactiveColor: Color(0xff8d8e98),
                        onChanged: (double newvalue) {
                          setState(() {height=newvalue.round();});
                        },
                      )
                ],
              ),
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
