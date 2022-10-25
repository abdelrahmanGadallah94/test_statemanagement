import 'package:flutter/cupertino.dart';

class CounterTask extends ChangeNotifier {
  int counter = 0;

  //1- increment 2
  incrementWithTwo() {
    counter += 2;
    notifyListeners();
  }

  //2- increment with 3
  incrementWithThree() {
    counter += 3;
    notifyListeners();
  }

  //1- increment 2
  incrementWithFive() {
    counter += 5;
    notifyListeners();
  }

  //2- increment with 3
  incrementWithTen(){
    counter += 10;
    notifyListeners();
  }
  resetCounter(){
    counter = 0;
    notifyListeners();
  }
}
