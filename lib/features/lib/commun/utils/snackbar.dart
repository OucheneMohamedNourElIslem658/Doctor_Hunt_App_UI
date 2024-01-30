import 'package:find_doctor_app/commun/constents/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(
  BuildContext context,
  {
    required Widget content,
    Color? backgroundColor
  }
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor ?? errorRedColor,
      content: content
    )
  );
}