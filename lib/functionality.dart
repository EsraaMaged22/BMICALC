import 'dart:math';

class Functionality {
  Functionality({required this.height, required this.weight});

  final int height;
  final int weight;

 late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getFeedback() {
    if (_bmi >= 25) {
      return 'You have a high body weight, Try to exercise';
    } else if (_bmi > 18.5) {
      return 'You have a normal body ,good work!';
    } else {
      return 'You have a lower body weight, try to eat more';
    }
  }
}