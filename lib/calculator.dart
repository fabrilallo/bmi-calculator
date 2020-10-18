import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator {
  final int height;
  final int weight;

  Calculator({@required this.height, @required this.weight});

  double calculateBMI() {
    return (weight / pow(height / 100, 2));
  }

  Map<String, String> getBMIDescriptionAndInterpretation(double bmi) {
    if (bmi > 25) {
      return {
        "description": 'OVERWEIGHT',
        "interpretation": 'Try to exercise more.'
      };
    } else if (bmi > 18.5) {
      return {"description": 'NORMAL', "interpretation": 'Good Job!'};
    } else {
      return {
        "description": 'UNDERWEIGHT',
        "interpretation": 'You can eat a bit more.'
      };
    }
  }
}
