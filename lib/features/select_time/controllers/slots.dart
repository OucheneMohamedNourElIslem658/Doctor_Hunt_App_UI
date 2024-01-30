import 'package:get/get.dart';

class SlotsController extends GetxController {
  late List<Map<String,dynamic>> slots,afternoonSlots,eveningSlots;
  Set<String> slotsPeriods = {};

  @override
  void onInit() {
    initialiseSlotsLists();
    super.onInit();
  }

  void initialiseSlotsLists() {
    slots = [
      {'time': '1:00 PM', 'isChosen': false,'slotPeriod': 'afternoon'},
      {'time': '1:30 PM', 'isChosen': false,'slotPeriod': 'afternoon'},
      {'time': '2:00 PM', 'isChosen': true,'slotPeriod': 'afternoon'},
      {'time': '2:30 PM', 'isChosen': false,'slotPeriod': 'afternoon'},
      {'time': '3:00 PM', 'isChosen': false,'slotPeriod': 'afternoon'},
      {'time': '3:30 PM', 'isChosen': false,'slotPeriod': 'afternoon'},
      {'time': '4:00 PM', 'isChosen': false,'slotPeriod': 'afternoon'},
      {'time': '5:00 PM', 'isChosen': false,'slotPeriod': 'evening'},
      {'time': '5:30 PM', 'isChosen': false,'slotPeriod': 'evening'},
      {'time': '6:00 PM', 'isChosen': false,'slotPeriod': 'evening'},
      {'time': '6:30 PM', 'isChosen': false,'slotPeriod': 'evening'},
      {'time': '7:00 PM', 'isChosen': false,'slotPeriod': 'evening'},
    ];
    for (var element in slots) {
      slotsPeriods.add(element['slotPeriod']);
    }
  }

  List<Map<String,dynamic>> getSlotsByPeriod(String period){
    List<Map<String,dynamic>> list = [];
    for (var element in slots) {
      if (element['slotPeriod'] == period) {
        list.add(element);
      }
    }
    return list;
  }

  void selectSlot(String slotTime) {
    for (var i = 0; i < slots.length; i++) {
      if (slots[i]['time'] != slotTime) {
        slots[i]['isChosen'] = false;
      } else {
        slots[i]['isChosen'] = true;
      }
    }
    update();
  }
}