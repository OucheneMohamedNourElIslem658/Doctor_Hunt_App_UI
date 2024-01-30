import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../constents/colors.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({
    super.key,
    this.padding,
    this.textSize,
    this.onPressed
  });

  final EdgeInsetsGeometry? padding;
  final double? textSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed, 
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 10
        ),
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Text(
          'Book Now',
          style: TextStyle(
            fontFamily: primaryFontMedium,
            fontSize: textSize ?? 12,
            color: whiteColor
          ),
        ),
      )
    );
  }
}