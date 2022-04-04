import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.bmiresult,required this.resulttext,required this.interpretation});
  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
            'Your Result',
            style: ktitletextstyle,
          ),
              )),
          Expanded(
              flex: 5,
              child: reusablecard(
                colour: kactivecardcolour,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext.toUpperCase(),
                      style: kresulttextstyle,
                    ),
                    Text(
                      bmiresult,
                      style: kbmitextstyle,
                    ),
                    Text(
                      interpretation,

                      style: kbodytextstyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          Bottombutton(
            onpress: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
