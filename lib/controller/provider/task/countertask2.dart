import 'package:flutter/cupertino.dart';

class CounterRightSide extends ChangeNotifier{
  int counterRight = 0;
  incrementWithTwo(){
    counterRight +=2;
    notifyListeners();
  }
  incrementWithThree(){
    counterRight +=3;
    notifyListeners();
  }
  incrementWithFive(){
    counterRight +=5;
    notifyListeners();
  }
  incrementWithTen(){
    counterRight +=10;
    notifyListeners();
  }
  resetCounter(){
    counterRight = 0;    notifyListeners();
  }
}