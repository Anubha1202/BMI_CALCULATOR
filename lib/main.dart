import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(
    MaterialApp(
      //  theme: ThemeData.dark(),
      // theme: ThemeData(primarySwatch: Colors.red),--->changes both +icon and the apbar
      //[discover by me theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   //     textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      //   colorScheme: ColorScheme.dark().copyWith(
      //     primary: Color(0xFF0A0E21),
      //     secondary: Colors.pink,
      //   ), //-->changes only the toolbar secondary means accent color hehehe
      // ),]

      theme: ThemeData.dark().copyWith(
        // primaryColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.light(primary: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    ),
  );
}
