import 'package:flutter/foundation.dart';

class MyCounter with ChangeNotifier{
  int _counter = 0;

  int get countertime => _counter;

  void increasecountertime(){
    if(_counter == 99){
      _counter = 0;
    }else{
      _counter++;
    }
    notifyListeners();
  }
  
  void decreasecountertime(){
    if(_counter > 0)
      _counter--;
    notifyListeners();
  }
}