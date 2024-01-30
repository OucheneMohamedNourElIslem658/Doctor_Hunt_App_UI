import 'package:get/get.dart';

class SwitchController extends GetxController {

  final switches = [
    {'name': 'Text messages','isActivated': false},
    {'name': 'Phone calls','isActivated': true}
  ];

  void controlSwitch(int index){
    final isActivated = switches[index]['isActivated'] as bool;
    switches[index]['isActivated'] = !isActivated;
    update();
  }
}