import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/controllers/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constents/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.addSeeFunctionality,
    this.controller,
    this.isEmail
  });

  final String hintText;
  final bool? addSeeFunctionality;
  final TextEditingController? controller;
  final textFieldController = Get.put(TextFieldController());
  final bool? isEmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: greyTextColor.withOpacity(0.12)
        ),
      ),
      child: GetBuilder<TextFieldController>(
        builder: (_) {
          return Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  cursorColor: primaryColor,
                  style: headline23Grey,
                  obscureText: !textFieldController.see && addSeeFunctionality == true,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: hintText,
                    hintStyle: headLine3Grey
                  ),
                ),
              ),
              addSeeFunctionality == true
              ? InkWell(
                onTap: () => textFieldController.changeSeeMethod(),
                child: SvgPicture.asset(
                  'assets/icons/see.svg',
                ),
              )
              : const SizedBox(),

              isEmail == true
              ? SvgPicture.asset(
                'assets/icons/correct.svg',
              )
              : const SizedBox(),
            ],
          );
        }
      ),
    );
  }
}