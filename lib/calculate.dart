import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class  Calculate{
  Calculate(this.hieght,this.weight);

  final int hieght;
  final int weight;

  double _bmi=0;

  String Calbmi(){
    _bmi=weight/pow(hieght/100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String GetResult(){
    if(_bmi>=25){
      return "OverWieght";
    }
    if(_bmi>18.5){
      return "Normal"; 
    }
    else{
      return "UnderWeight ";
    }
  }
  String GetInterpretation(){
    if(_bmi>=25){
      return "you are OverWieght eat less and exercise more";
    }
    if(_bmi>18.5){
      return "Damnn your fit"; 
    }
    else{
      return "Man put some muscles on those Bones  ";
    }
  }


}