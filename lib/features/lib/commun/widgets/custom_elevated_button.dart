import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../constents/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key, 
    required this.text, 
    this.borderRadius,
    required this.onPressed,
    this.padding
  });

  final String text;
  final VoidCallback onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius
              .all(Radius.circular(borderRadius ?? 10))
          )
        ),
        child: Text(
          text,
          style: headLine4White
        )
      ),
    );
  }
}