import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  Calculator({required this.height, required this.weight});

    double _bmi=0;

  String calcBMI() {
    _bmi = (weight / pow(height/100, 2));
    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'OVERWEIGHT';
    }
    else if(_bmi > 18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpret(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more !';
    }
    else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job !';
    }
    else{
      return 'You have a lower than normal body weight. Try eating more !';
    }
  }
}