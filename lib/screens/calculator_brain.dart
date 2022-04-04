import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  late double _bmi;
  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getresult(){
    if(_bmi>=25){
      return 'Overweight';

    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';

    }
  }
  String getinterpretation(){
    if(_bmi>=25){
      return 'You fatass,go to gym';

    }
    else if(_bmi>18.5){
      return 'You are more than enough';
    }
    else{
      return 'Start eating more';

    }
  }

}