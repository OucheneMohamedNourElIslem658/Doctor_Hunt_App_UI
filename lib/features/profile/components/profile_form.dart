import 'package:find_doctor_app/features/profile/screens/change_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/custom_elevated_button.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldWithLabel(
          controller: TextEditingController(text: 'Abdullah Mamun'), 
          hint: 'Enter your name', 
          label: 'Name',
        ),
        CustomTextFieldWithLabel(
          controller: TextEditingController(text: '+8801800000000'), 
          hint: 'Enter your', 
          label: 'Contact Number',
          trailing: GestureDetector(
            onTap: (){},
            child: SvgPicture.asset('assets/icons/edit.svg',width: 15)
          ),
        ),
        CustomTextFieldWithLabel(
          controller: TextEditingController(text: '01 05 2004'), 
          hint: 'DD MM YYYY', 
          label: 'Date of birth',
          trailing: GestureDetector(
            onTap: (){},
            child: SvgPicture.asset('assets/icons/edit.svg',width: 15)
          ),
        ),
        CustomTextFieldWithLabel(
          controller: TextEditingController(), 
          hint: 'Add Details', 
          label: 'Location',
        ),
        const SizedBox(height: 20),
        CustomElevatedButton(
          text: 'Continue', 
          borderRadius: 12,
          onPressed: () => Get.to(const ChangeName())
        ),
      ],
    );
  }
}

class CustomTextFieldWithLabel extends StatelessWidget {
  const CustomTextFieldWithLabel({
    super.key, 
    required this.controller, 
    required this.hint, 
    required this.label,
    this.trailing
  });

  final TextEditingController controller;
  final String hint,label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5,bottom: 13,right: 20,left: 20),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.06),
            blurRadius: 1
          )
        ]
      ),
      child: TextField(
        controller: controller,
        cursorColor: primaryColor,
        style: headline23Grey,
        maxLines: null,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          hintText: hint,
          hintStyle: headline23Grey,
          focusedBorder: InputBorder.none,
          suffix: trailing,
          label: Text(
            label,
            style: headline14,
          )
        ),
      ),
    );
  }
}