import 'package:find_doctor_app/commun/widgets/simple_landing_screen.dart';
import 'package:find_doctor_app/features/patient_details/patient_details_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleLandingScreen(
        title: 'Patient Details', 
        image: 'assets/images/document.svg', 
        mainText: 'Your cart is empty', 
        subText: '', 
        buttontext: 'Add Tests', 
        onPressed: () => Get.to(const PatientDetailsForm())
      ),
    );
  }
}