import 'package:find_doctor_app/features/auth/controllers/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/widgets/bottom_sheet_drag_line.dart';
import '../../../commun/widgets/custom_elevated_button.dart';
import '../../../commun/widgets/custom_text_field.dart';
import 'custom_otp_text_field.dart';
import 'description.dart';

class CustomButtomSheet extends StatelessWidget {
  CustomButtomSheet({super.key});

  final bottomSheetController = Get.put(BottomSheetController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomSheetController>(
      builder: (context) {
        return Container(
          height: bottomSheetController.currentPage != 2 ? 370 : 460,
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 50
          ),
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
          ),
          child: Column(
            children: [
              const BottomSheetDragLine(),
              Flexible(
                fit: FlexFit.tight,
                child: PageView(
                  controller: bottomSheetController.pagesController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    FirstPage(),
                    SecondPage(),
                    ThirdPage(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomElevatedButton(
                  text: bottomSheetController.currentPage !=2 ? 'Continue' : 'Update Password', 
                  borderRadius: 12,
                  onPressed: () => bottomSheetController.animateToNextPage()
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Description(
            mainText: 'Reset Password',
            subText: 'Set the new password for your account so you can login and access all the features.',
            alignment: CrossAxisAlignment.start,
            subTextAlignment: TextAlign.left,
            lineSpacing: 10,
          ),
          const SizedBox(height: 30),
          CustomTextField(
            hintText: 'New Password',
            addSeeFunctionality: true,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Re-enter Password',
            addSeeFunctionality: true,
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(),
        Description(
          mainText: 'Enter 4 Digits Code',
          subText: 'Enter the 4 digits code that you received on \nyour email.',
          alignment: CrossAxisAlignment.start,
          subTextAlignment: TextAlign.left,
          lineSpacing: 10,
        ),
        Spacer(),
        CustomOTPTextField()
      ],
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Description(
          mainText: 'Forgot password',
          subText: 'Enter your email for the verification proccesss,we will send 4 digits code to your email.',
          alignment: CrossAxisAlignment.start,
          subTextAlignment: TextAlign.left,
          lineSpacing: 10,
        ),
        const Spacer(),
        CustomTextField(
          hintText: 'Email'
        ),
      ],
    );
  }
}