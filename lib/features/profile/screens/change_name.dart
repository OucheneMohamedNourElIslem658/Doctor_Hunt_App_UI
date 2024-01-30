import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/keyboard.dart';
import '../controllers/keyboard.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGrey,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const ScreenTitleAppBar(
                    title: 'Profile',
                    style: headLine30White,
                  ),
                  const Spacer(),
                  const Text(
                    'What is your name?',
                    style: headLine28White,
                  ),
                  const SizedBox(height: 40),
                  NameField(),
                  const Spacer(flex: 3),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: whiteColor,
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 5,bottom: 5,top: 5),
                child: CustomKeyBoard()
              ),
            ),
          ],
        )
      ),
    );
  }
}

class NameField extends StatelessWidget {
  NameField({super.key});

  final keyboardController = Get.put(KeyboardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<KeyboardController>(
      builder: (_) {
        return TextField(
          controller: keyboardController.controller,
          style: headline25MediumWhite,
          cursorColor: whiteColor,
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: whiteColor,
                width: 2
              )
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: whiteColor,
              )
            )
          ),
        );
      }
    );
  }
}