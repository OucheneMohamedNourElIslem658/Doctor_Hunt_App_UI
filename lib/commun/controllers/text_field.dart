import 'package:get/get.dart';

class TextFieldController extends GetxController {
  bool see = true;
  void changeSeeMethod(){
    see = !see;
    update();
  }
}