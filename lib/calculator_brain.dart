import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int? height;
  final int? weight;

  late double _bmi;
  String calculatebmi() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1); //1decimal place
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a Normal body weight.Good job!';
    } else {
      return 'You have lower than normal body weight. you can eat a bit more.';
    }
  }
}
