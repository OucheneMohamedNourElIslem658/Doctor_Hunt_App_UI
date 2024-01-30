import '/commun/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/auth_credentials.dart';
import '../components/description.dart';
import '../components/signup_form.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final size = Get.size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: size.height*0.15),
                  const Description(),
                  SizedBox(height: size.height*0.1),
                  const AuthCredentials(),
                  const SizedBox(height: 30),
                  const SignUpForm(),
                  SizedBox(height: size.height*0.05),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}