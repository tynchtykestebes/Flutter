import 'dart:math';

class ResultsInResultPage {
  double bmi({required int height, required int weight}) {
    final result = weight / pow(height / 100, 2);
    return result;
  }

  String bmiText(result) {
    if (result < 18.5) {
      return 'Underweight';
    } else if (result >= 18.5 && result < 25) {
      return 'Normal';
    } else if (result >= 25 && result < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String bmiMessage(result) {
    if (result < 18.5) {
      return 'You are underweight';
    } else if (result >= 18.5 && result < 25) {
      return 'You are at a normal weight';
    } else if (result >= 25 && result < 30) {
      return 'You are overweight';
    } else {
      return 'You are obese';
    }
  }
}
