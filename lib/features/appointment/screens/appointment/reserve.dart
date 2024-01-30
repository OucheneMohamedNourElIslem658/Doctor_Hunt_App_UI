import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:find_doctor_app/features/appointment/screens/appointment/components/successful_appointment.dart';
import 'package:get/get.dart';

import '../../../../commun/widgets/custom_elevated_button.dart';
import '../../../../commun/widgets/screen_title_app_bar.dart';

import '../../../../commun/widgets/background.dart';
import 'package:flutter/material.dart';
import 'components/appointment_time.dart';
import 'components/calender.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10,left: 20),
                child: ScreenTitleAppBar(title: 'Appointments'),
              ),
              const SizedBox(height: 30),
              MyCalender(),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 25
                      )
                    ]
                  ),
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        AppointmentTime(isHour: true),
                        const SizedBox(height: 20),
                        AppointmentTime(isHour: false),
                        const SizedBox(height: 20),
                        CustomElevatedButton(
                          text: 'Confirm',
                          onPressed: () => Get.dialog(const SuccessfulAppointment()),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        )
      )
    );
  }
}