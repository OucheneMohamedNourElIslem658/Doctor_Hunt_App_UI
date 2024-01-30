import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/logo.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  void navigate() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(const Onboarding());
  }

  @override
  Widget build(BuildContext context) {
    navigate();
    return const Scaffold(
      body: Stack(
        children: [
          Background(
            child: Logo()
          )
        ],
      ),
    );
  }
}