import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;
  double _bmi=18.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return" Overweight";
    }else if(_bmi>18.5){
      return "Normal";
    }else{
      return "Underweight";
    }
  }

  String getIntrepretation(){
    if(_bmi>=25){
      return"You Have Higher Than Normal Body Weight";
    }else if(_bmi>18.5){
      return "You Have Normal Body Weight. Good Job!";
    }else{
      return "You Have  A Lower Body Weight.You Can Eat A Bit More";
    }
  }
}