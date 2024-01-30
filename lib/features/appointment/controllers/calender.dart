import 'package:get/get.dart';

class CalenderController extends GetxController {
  String getMonth(int monthNumber) {
    switch (monthNumber) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return 'Invalid month number';
    }
  }

  String getDay(int dayNumber) {
    switch (dayNumber) {
      case 1:
        return 'Su';
      case 2:
        return 'Mo';
      case 3:
        return 'Tu';
      case 4:
        return 'We';
      case 5:
        return 'Th';
      case 6:
        return 'Fr';
      case 7:
        return 'Sa';
      default:
        return '';
    }
  }

  // ignore: unused_field
  var selectedDay = DateTime.utc(2023,1,18);
  var focusedDay = DateTime.utc(2023,1,18);

  void selectDay(DateTime mySelectedday,DateTime myFocusedday){
    selectedDay = mySelectedday;
    focusedDay = myFocusedday;
    update();
  }

  void toNextMonth(){
    if (focusedDay.month == 12) {
      focusedDay = DateTime.utc(
        focusedDay.year+1,
        1,
        1
      );
    } else {
      focusedDay = DateTime.utc(
        focusedDay.year,
        focusedDay.month+1,
        1
      );
    }
    update();
  }
  void toPreviousmonth(){
    if (focusedDay.month == 1){
      focusedDay = DateTime.utc(
        focusedDay.year-1,
        12,
        1
      );
    } else {
      focusedDay = DateTime.utc(
        focusedDay.year,
        focusedDay.month-1,
        1
      );
    }
    update();
  }
}