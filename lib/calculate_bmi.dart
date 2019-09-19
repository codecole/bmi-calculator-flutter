import 'dart:math';

class CalculateBmi{
  CalculateBmi({this.height, this.weight});

  final int height;
  final int weight;
double _bmi;

  String bmiSolution(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);// rounds off a number
  }
  String getResult (){
    if (_bmi >= 25){
      return 'Overweight';
    }else if (_bmi > 18.5){
      return 'Normal';
    }else{
      return'Underweight';
    }
  }

  String getInterpretation (){
    if (_bmi >= 25){
      return 'You would need to exercise a bit more, good luck with that';

    }else if (_bmi > 18.5){
      return 'Your doing great, you have a normal body weight';
    }else{
      return'You need to bulk up a bit and eat more, your a little below normal weight';
    }
  }
}