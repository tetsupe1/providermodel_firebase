import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String Tetsupe1Text = "Tetsupe1";

  void ChangeTetsupe1Text(){
    Tetsupe1Text = "Tetsupe1かっこいい!!!";
    notifyListeners();
  }
}