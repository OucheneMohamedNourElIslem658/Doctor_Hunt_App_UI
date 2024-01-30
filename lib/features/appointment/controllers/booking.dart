import 'package:get/get.dart';

class BookingController extends GetxController {
  final times = [
    {'hour': '10:00','periode': 'AM','isSelected': false},
    {'hour': '11:00','periode': 'AM','isSelected': false},
    {'hour': '12:00','periode': 'PM','isSelected': true},
    {'hour': '01:00','periode': 'PM','isSelected': false},
    {'hour': '02:00','periode': 'PM','isSelected': false},
  ];

  final remindMeBefore = [
    {'value' : 30,'isSelected': false},
    {'value' : 40,'isSelected': false},
    {'value' : 25,'isSelected': true},
    {'value' : 10,'isSelected': false},
    {'value' : 35,'isSelected': false},
  ];

  void selectATiming(int index,List list){
    for (var i = 0; i < list.length; i++) {
      list[i]['isSelected'] = false;
      if (i == index) {
        list[index]['isSelected'] = true;
      }
    }
    update();
  }
}