import 'package:find_doctor_app/features/auth/screens/login.dart';
import 'package:find_doctor_app/features/main/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/custom_elevated_button.dart';
import '../../../commun/widgets/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hintText: 'Name'),
        const SizedBox(height: 20),
        CustomTextField(hintText: 'Email',isEmail: true),
        const SizedBox(height: 20),
        CustomTextField(hintText: 'Password',addSeeFunctionality: true),
        const SizedBox(height: 15),
        Row(
          children: [
            SvgPicture.asset('assets/icons/circle.svg'),
            const SizedBox(width: 10),
            const Text(
              'I agree with the Terms of Service & Privacy Policy',
              style: headline9Grey,
            )
          ],
        ),
        const SizedBox(height: 50),
        CustomElevatedButton(
          text: 'Sign up', 
          borderRadius: 12,
          onPressed: () => Get.offAll(Landing())
        ),
        TextButton(
          onPressed: () => Get.off(Login()), 
          child: const Text(
            'Have an account? Log in',
            style: headline20,
          )
        ),
      ],
    );
  }
}