import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeyboardController extends GetxController {
  final TextEditingController controller = TextEditingController();
  bool isUpperCase = true;
  List<String> letters = [
    'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P',
    'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L',
    'Z', 'X', 'C', 'V', 'B', 'N', 'M'
  ];

  void typeLetter(String letter){
    if (letter.length == 1) {
      controller.text = controller.text + letter;
    } else {
      controller.text = '${controller.text} ';
    }
    update();
  }

  void toLowerCase(){
    for (var i = 0; i < letters.length; i++) {
      letters[i] = letters[i].toLowerCase();
    }
    update();
  }

  void toUperCase(){
    for (var i = 0; i < letters.length; i++) {
      letters[i] = letters[i].toUpperCase();
    }
    update();
  }

  void changeTheCase(){
    if (isUpperCase) {
      toLowerCase();
    } else {
      toUperCase();
    }
    isUpperCase = !isUpperCase;
    update();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}