import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/custom_elevated_button.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/details_form.dart';
import 'components/steps.dart';

class PatientDetailsForm extends StatelessWidget {
  const PatientDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const ScreenTitleAppBar(title: "Patient Details"),
                  const SizedBox(height: 25),
                  const Steps(),
                  const SizedBox(height: 15),
                  const DetailsForm(),
                  const SizedBox(height: 30),
                  CustomElevatedButton(text: 'Continue', onPressed: (){}),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}