import 'package:find_doctor_app/features/appointment/screens/appointment/reserve.dart';
import 'package:get/get.dart';

import '../../../../commun/widgets/add_patient.dart';
import '../../../../commun/widgets/background.dart';
import '../../../../commun/widgets/custom_elevated_button.dart';
import '../../../../commun/widgets/doctor_card_3.dart';
import '../../../../commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../commun/widgets/custom_text_field.dart';
import 'components/who_is_the_patient.dart';

class Patient extends StatelessWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10,right: 20,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScreenTitleAppBar(title: 'Appointment'),
                      SizedBox(height: 30),
                      DoctorCard3(showBookingButton: false),
                      SizedBox(height: 30),
                      Text(
                        'Appointment For',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'rubikMedium'
                        ),
                      ),
                      SizedBox(height: 20),
                      PatientForm(),
                      SizedBox(height: 30),
                      Text(
                        'Who is this patient?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'rubikMedium'
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        AddPatient(),
                        SizedBox(width: 10),
                        Family()
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CustomElevatedButton(
                    text: 'Next',
                    borderRadius: 6, 
                    onPressed: () => Get.to(const Appointment())
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PatientForm extends StatelessWidget {
  const PatientForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hintText: 'Patient Name'),
        const SizedBox(height: 20),
        CustomTextField(hintText: 'Contact Number'),
      ],
    );
  }
}