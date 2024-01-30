import 'package:find_doctor_app/features/auth/screens/sign_up.dart';
import 'package:find_doctor_app/features/main/landing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/custom_elevated_button.dart';
import '../../../commun/widgets/custom_text_field.dart';
import 'custom_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hintText: 'Email',isEmail: true),
        const SizedBox(height: 20),
        CustomTextField(hintText: 'Password',addSeeFunctionality: true),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomElevatedButton(
            text: 'Sign up', 
            borderRadius: 12,
            onPressed: () => Get.offAll(Landing())
          ),
        ),
        TextButton(
          onPressed: () => Get.bottomSheet(CustomButtomSheet()),
          child: const Text(
            'Forgot password',
            style: headline20,
          )
        ),
        SizedBox(height: size.height*0.095),
        TextButton(
          onPressed: () => Get.off(SignUp()), 
          child: const Text(
            'Don’t have an account? Join us',
            style: headline20,
          )
        ),
      ],
    );
  }
}