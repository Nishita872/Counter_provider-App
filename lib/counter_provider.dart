import 'package:flutter/material.dart';
class counterprovider with ChangeNotifier{

int _counter=0;
int getCounter()=>_counter;

void incrementCounter(){
  _counter++;
  notifyListeners();
}

}