import 'package:bmicalculator/components/bottom_button.dart';
import 'package:bmicalculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/components/reusable_card.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmiresult,
      required this.resluttext,
      required this.interpretation});
  final String bmiresult;
  final String resluttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  style: ktitletextstyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: reusablecard(
                onpress: () {},
                colour: kActivecardcolour,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resluttext.toUpperCase(),
                      style: kresulttextstyle,
                    ),
                    Text(
                      bmiresult,
                      style: kbmitextstyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kbodytextstyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttontitle: 'RE-CALCULATE',
              ontap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
