import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/features/appointment/controllers/booking.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commun/constents/colors.dart';

class AppointmentTime extends StatelessWidget {
  AppointmentTime({
    super.key,
    required this.isHour
  });

  final bool isHour;
  final bookingController = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isHour 
            ? 'Availble Time' 
            : 'Reminder Me Before',
          style: headline17
        ),
        const SizedBox(height: 25),
        GetBuilder<BookingController>(
          builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                bookingController.times.length, 
                (index) {
                  final time = bookingController.times[index];
                  final remindMeBeforeItem = bookingController.remindMeBefore[index];
                  final hour = time['hour'] as String;
                  final periode = time['periode'] as String;
                  final isSelected = (isHour 
                    ? time ['isSelected'] 
                    : remindMeBeforeItem['isSelected']
                  ) as bool;
                  final value = remindMeBeforeItem['value'] as int;
                  return GestureDetector(
                    onTap: () 
                      => isHour
                       ? bookingController
                        .selectATiming(index,bookingController.times)
                       : bookingController
                        .selectATiming(index, bookingController.remindMeBefore),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(!isSelected ? 0.08 : 1),
                        borderRadius: const BorderRadius.all(Radius.circular(30))
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        isHour
                          ?'$hour\n$periode'
                          :'$value\nMinit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: !isSelected 
                            ? primaryColor 
                            : whiteColor,
                          fontFamily: primaryFont,
                          fontSize: isSelected ? 14 : 13
                        ),
                      ),
                    ),
                  );
                }
              ),
            );
          }
        ),
      ],
    );
  }
}