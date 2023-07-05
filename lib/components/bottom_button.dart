import 'package:flutter/material.dart';
import 'package:bmicalculator/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap, required this.buttontitle});
  final VoidCallback ontap;
  final String buttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: KBottomcontainercolour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 25.0),
        width: double.infinity,
        height: kBottomcontainerheight,
        child: Center(
            child: Text(
          buttontitle,
          style: klargebuttontextstyle,
        )),
      ),
    );
  }
}
