import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/widgets/simple_landing_screen.dart';
import '../components/upload_image.dart';

class MedicalRecords extends StatelessWidget {
  const MedicalRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleLandingScreen(
        title: 'Medical Records', 
        image: 'assets/images/record.svg', 
        mainText: 'Add a medical record.', 
        subText: 'A detailed health history helps a doctor diagnose \nyou btter.', 
        buttontext: 'Add a record', 
        onPressed: () => Get.bottomSheet(UploadPhoto())
      ),
    );
  }
}