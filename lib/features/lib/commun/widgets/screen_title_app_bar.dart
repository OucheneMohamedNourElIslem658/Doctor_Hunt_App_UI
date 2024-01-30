import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import 'get_back_button.dart';

class ScreenTitleAppBar extends StatelessWidget {
  const ScreenTitleAppBar({
    super.key, 
    required this.title,
    this.style,
    this.showButton
  });

  final String title;
  final TextStyle? style;
  final bool? showButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        showButton == null || showButton!
          ? const GetBackButton()
          : const SizedBox(),
        showButton == null || showButton!
          ? const SizedBox(width: 20)
          : const SizedBox(),
        Text(
          title,
          style: style ?? headline7Black
        )
      ],
    );
  }
}