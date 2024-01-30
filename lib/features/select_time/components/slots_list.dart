import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/features/select_time/controllers/slots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';

class SlotsList extends StatelessWidget {
  SlotsList({super.key});

  final slotsController = Get.put(SlotsController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GetBuilder<SlotsController>(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              slotsController.slotsPeriods.length, 
              (index) {
                final period = slotsController.slotsPeriods.elementAt(index);
                final periodSlotsList = slotsController.getSlotsByPeriod(period);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SlotsByPeriod(
                    period: period, 
                    periodSlotsList: periodSlotsList, 
                    slotsController: slotsController
                  ),
                );
              }
            )
          );
        }
      ),
    );
  }
}

class SlotsByPeriod extends StatelessWidget {
  const SlotsByPeriod({
    super.key,
    required this.period,
    required this.periodSlotsList,
    required this.slotsController,
  });

  final String period;
  final List<Map<String, dynamic>> periodSlotsList;
  final SlotsController slotsController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${period[0].toUpperCase() + period.substring(1)} ${periodSlotsList.length} slots',
          style: headline17
        ),
        const SizedBox(height: 15),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(
            periodSlotsList.length, 
            (index1) {
              final slot = periodSlotsList[index1];
              final slotTime = slot['time'] as String;
              final isChosen = slot['isChosen'] as bool;
              return InkWell(
                onTap: () => slotsController.selectSlot(slotTime),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: !isChosen ? primaryColor.withOpacity(0.08) : primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(6))
                  ),
                  child: Text(
                    slotTime,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'rubikMedium',
                      color: !isChosen ? primaryColor : Colors.white
                    ),
                  ),
                ),
              );
            }
          ),
        )
      ],
    );
  }
}