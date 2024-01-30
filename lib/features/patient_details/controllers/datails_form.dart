import 'package:get/get.dart';

class DetailsFormController extends GetxController {
  late List<Map<String,dynamic>> monthsData;

  String? currentMonth;
  String? currentYear;
  int currentDay = 1;
  late List<String> months;
  bool hintEnabled = true;
  static const defaultYear = '2000';

  void updateCurrentDay(String? p0){
    currentDay = int.parse(p0 ?? '$currentDay');
    update();
  }

  int getCurrentFebruaryDaysNumber(){
    DateTime februaryFirst = DateTime(int.parse(currentYear ?? defaultYear), 2, 1);
    DateTime marchFirst = DateTime(int.parse(currentYear ?? defaultYear ), 3, 1);
    int numberOfDaysInFebruary = marchFirst.difference(februaryFirst).inDays;
    return numberOfDaysInFebruary;
  }

  List<String> getMonths(){
    final List<String> months = [];
    for (var element in monthsData) {
      final name = element['month'] as String;
      months.add(name);
    }
    return months;
  }

  List<String> getDays(){
    final List<String> days = [];
    for (var element in monthsData) {
      final number = element['days'] as int;
      final name = element['month'] as String;
      if (name == currentMonth) {
        for (var i = 0; i < number; i++) {
          days.add((i+1).toString());
        }
      }
    }
    return days;
  }

  void updateCurrentMonth(String? month){
    currentMonth = month;
    update();
  }

  void updateCurrentYear(String? year){
    currentYear = year;
    update();
  }

  getYearsRange({required int startingYear}){
    final year = startingYear
      .clamp(
        1950, 
        DateTime.now().year
      );
    final range = List.generate(
      DateTime.now().year+1-year,
      (index) => (year + index).toString()
    );
    return range;
  }

  final gender = [
    {'type': 'Male','isSelected': true},
    {'type': 'Female','isSelected': false},
    {'type': 'Others','isSelected': false},
  ];

  void selectGender(int index){
    for (var i = 0; i < gender.length; i++) {
      gender[i]['isSelected'] = false;
      if (i == index) {
        gender[i]['isSelected'] = true;
      }
    }
    update();
  }

  @override
  void onInit() {
    monthsData = [
      {'month': 'January', 'days': 31},
      {'month': 'February', 'days': getCurrentFebruaryDaysNumber()},
      {'month': 'March', 'days': 31},
      {'month': 'April', 'days': 30},
      {'month': 'May', 'days': 31},
      {'month': 'June', 'days': 30},
      {'month': 'July', 'days': 31},
      {'month': 'August', 'days': 31},
      {'month': 'September', 'days': 30},
      {'month': 'October', 'days': 31},
      {'month': 'November', 'days': 30},
      {'month': 'December', 'days': 31},
    ];
    months = getMonths();
    super.onInit();
  }
}