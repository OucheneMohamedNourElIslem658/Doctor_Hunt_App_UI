import 'package:find_doctor_app/features/appointment/controllers/calender.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../commun/constents/colors.dart';

class MyCalender extends StatelessWidget {
  MyCalender({super.key});

  final calenderController = Get.put(CalenderController());

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: SizedBox(
        width: Get.width-40,
        child: GetBuilder<CalenderController>(
          builder: (_) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Header(calenderController: calenderController),
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      DaysOfWeek(calenderController: calenderController),
                      const SizedBox(height: 7),
                      const Divider(height: 1,color: Color(0xFFEDEDED)),
                      Calender(calenderController: calenderController)
                    ],
                  )
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

class Calender extends StatelessWidget {
  const Calender({
    super.key,
    required this.calenderController,
  });

  final CalenderController calenderController;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      pageJumpingEnabled: true,
      focusedDay: calenderController.focusedDay,
      currentDay: calenderController.selectedDay,
      rowHeight: 40,
      firstDay: DateTime.utc(2004,1,1),
      lastDay: DateTime.utc(2030,1,1),
      onDaySelected: (selectedDay, focusedDay)
        => calenderController
          .selectDay(selectedDay, focusedDay),
      onPageChanged: (focusedDay)
        => calenderController.focusedDay = focusedDay,
      daysOfWeekVisible: false,
      headerVisible: false,
      calendarStyle: const CalendarStyle(
        defaultTextStyle: TextStyle(
          fontFamily: 'rubik',
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
        weekendTextStyle: TextStyle(
          fontFamily: 'rubik',
          fontWeight: FontWeight.bold
        ),
        todayTextStyle: TextStyle(
          fontFamily: 'rubik',
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        todayDecoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle
        ),
        outsideDaysVisible: false
      ),
    );
  }
}

class DaysOfWeek extends StatelessWidget {
  const DaysOfWeek({
    super.key,
    required this.calenderController,
  });

  final CalenderController calenderController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        7, 
        (index) => Text(
          calenderController.getDay(index+1),
          style: const TextStyle(
            fontFamily: 'rubik',
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        )
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.calenderController,
  });
  final CalenderController calenderController;

  @override
  Widget build(BuildContext context) {
    final selectedDay = '${calenderController.getMonth(calenderController.focusedDay.month)} ${calenderController.focusedDay.year}';
    return Container(
      height: 50,
      color: primaryColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            selectedDay,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'rubikMedium',
              color: Colors.white
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => calenderController.toPreviousmonth(),
            child: const Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () => calenderController.toNextMonth(),
            child: const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}