import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../../../commun/widgets/custom_text_field.dart';
import 'age.dart';
import 'gender.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Patient’s Name',
            style: headline27Black,
          ),
          const SizedBox(height: 10),
          CustomTextField(hintText: 'Abdullah Mamun'),
          const SizedBox(height: 15),
          Age(),
          const SizedBox(height: 15),
          Gender(),
          const SizedBox(height: 15),
          const Text(
            'Mobile Number',
            style: headline27Black
          ),
          const SizedBox(height: 10),
          CustomTextField(hintText: '+8801000000000'),
          const SizedBox(height: 15),
          const Text(
            'Email ',
            style: headline27Black
          ),
          const SizedBox(height: 10),
          CustomTextField(hintText: 'itsmemamun1@gmail.com')
        ],
      ),
    );
  }
}