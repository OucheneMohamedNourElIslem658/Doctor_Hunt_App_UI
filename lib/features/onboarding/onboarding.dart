import 'package:find_doctor_app/features/auth/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commun/widgets/background.dart';
import 'widgets/blue_circle.dart';
import 'widgets/description_texts.dart';
import '../../commun/widgets/custom_elevated_button.dart';
import 'widgets/skip.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        showBlueShadow: false,
        child: Stack(
          children: [
            const Positioned(
              top: -20,
              left: -100,
              child: BlueCircle()
            ),
            Align(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const Spacer(flex: 5),
                    Image.asset("assets/images/onboarding1.png"),
                    const Spacer(flex: 4,),
                    const DescriptionTexts(),
                    const Spacer(flex: 3),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomElevatedButton(
                          text: "Get Started",
                          onPressed: () => Get.off(Login()),
                        ),
                        const Skip(),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}