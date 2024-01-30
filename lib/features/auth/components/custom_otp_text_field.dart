import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../commun/constents/colors.dart';

class CustomOTPTextField extends StatelessWidget {
  const CustomOTPTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: OtpTextField(
        numberOfFields: 4,
        borderColor: blackColor.withOpacity(0.16),
        focusedBorderColor: blackColor.withOpacity(0.16),
        enabledBorderColor: blackColor.withOpacity(0.16),
        disabledBorderColor: blackColor.withOpacity(0.16),
        cursorColor: greyTextColor,
        showFieldAsBox: true, 
        borderWidth: 0.8,
        fieldWidth: 54,
        borderRadius: const  BorderRadius.all(Radius.circular(12)),
        textStyle: const TextStyle(
          fontFamily: 'ptSans',
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: primaryColor
        ),
      ),
    );
  }
}