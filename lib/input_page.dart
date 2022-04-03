import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import 'reusablecard.dart';

const kactivecardcolour = Color(0xff1d1e33);
const kinactivecardcolour = Color(0xff111328);
const kbottomcontainercolour = Color(0xffeb1555);
const kbottomcontainerheight = 80.0;
enum Gender {male,female,}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  Color malecardcolour = kinactivecardcolour;
  Color femalecardcolour = kinactivecardcolour;
  
  void updatecolour(Gender selectedgender) {
    if (selectedgender==Gender.male) {
      if (malecardcolour == kinactivecardcolour) {
        malecardcolour = kactivecardcolour;
        femalecardcolour = kinactivecardcolour;
      }
      else{malecardcolour=kinactivecardcolour;}
    }
    if(selectedgender==Gender.female){
      if (femalecardcolour == kinactivecardcolour) {
        femalecardcolour = kactivecardcolour;
        malecardcolour = kinactivecardcolour;
      }
      else{femalecardcolour=kinactivecardcolour;}

    }
    
  }

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
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecolour(Gender.male);
                    });
                  },
                  child: reusablecard(
                    colour: malecardcolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                     onTap: (){
                       setState(() {
                         updatecolour(Gender.female);
                       });
                     },
                      child: reusablecard(
                                      colour: femalecardcolour,
                                      cardchild: iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                                      ),
                                    ),
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
