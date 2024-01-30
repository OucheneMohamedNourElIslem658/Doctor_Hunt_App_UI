import '../../select_time/controllers/close_work_time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'day_work_timing.dart';

class CloseWorkTime extends StatelessWidget {
  CloseWorkTime({super.key});

  final closeWorkTimeController = Get.put(CloseWorkTimeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CloseWorkTimeController>(
      builder: (_) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: closeWorkTimeController.scrollController,
          child: Row(
            children: List.generate(
              closeWorkTimeController.workTimeList.length, 
              (index) {
                final workTime = closeWorkTimeController.workTimeList[index];
                final date = workTime['date'] as String;
                final slots = workTime['slots'] as int;
                final isSelected = workTime['selected'] as bool;
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: () => closeWorkTimeController.selectDay(index),
                    child: DayWorkTiming(
                      day: date, 
                      slotsAvailble: slots,
                      isHilited: isSelected,
                    ),
                  ),
                );
              }
            )
          ),
        );
      }
    );
  }
}