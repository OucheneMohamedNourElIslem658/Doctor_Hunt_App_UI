import 'package:find_doctor_app/commun/widgets/simple_landing_screen.dart';
import 'package:find_doctor_app/features/diagnostics_tests/diagnostic_texts_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiagnosticsTests extends StatelessWidget {
  const DiagnosticsTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleLandingScreen(
        title: 'Diagonstics Tests', 
        image: 'assets/images/doctor_note.svg', 
        mainText: 'You haven’t booked any tests yet', 
        subText: 'Get started with your first health checkup', 
        buttontext: 'Book Now', 
        onPressed: () => Get.to(const DiagnosticsTestsHome())
      ),
    );
  }
}