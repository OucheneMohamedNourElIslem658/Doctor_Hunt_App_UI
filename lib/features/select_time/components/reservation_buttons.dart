import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 54,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            border: Border.all(
              width: 1,
              color: primaryColor.withOpacity(0.5)
            )
          ),
          alignment: Alignment.center,
          child: const Text(
            'Contact Clinic',
            style: headline7Green
          ),
        ),
      ),
    );
  }
}