import 'package:flutter/material.dart';
import 'package:bmicalculator/constant.dart';

class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({required this.icon, required this.onpressed});
  final IconData icon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6.0,
      //disabledElevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
