import 'package:flutter/material.dart';

class BoolData {
  static bool boolValue = true;

  static Color blueAndRed(){
    return BoolData.boolValue ? Colors.blue: Colors.red;
  }

  static Color whiteAndYellow(){
    return BoolData.boolValue ? Colors.white: Colors.yellow;
  }

  static Color whiteAndBlack(){
    return BoolData.boolValue ? Colors.white: Colors.black;
  }

}
