import 'package:flutter/material.dart';

class reusablecard extends StatelessWidget {
  reusablecard({required this.colour, this.cardchild, required this.onpress});

  final Color
      colour; //finsl mskes this property immutable we cant change  again
  final Widget? cardchild;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        //color: Color(0xFF1D1E33),-->if we are using boxdecoration then we must have to move color becuasecolor is the part of boxdecoration too dominatnt
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0), //-->cornor round
        ),
        // height: 200,
        // width: 170,
      ),
    );
  }
}

// {Key? key,
//     required this.iconPath, // non-nullable and required
// this.placeHolder = "", // non-nullable but optional with a default value
// this.onFocusChange, // nullable and optional
// })
// : super(key: key);
