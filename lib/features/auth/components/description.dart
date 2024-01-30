import 'package:flutter/material.dart';

import '../../../commun/constents/text_styles.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    this.mainText,
    this.subText, 
    this.alignment, 
    this.subTextAlignment,
    this.lineSpacing
  });

  final String? mainText,subText;
  final CrossAxisAlignment? alignment;
  final TextAlign? subTextAlignment;
  final double? lineSpacing;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment ?? CrossAxisAlignment.center,
      children: [
        Text(
          mainText ?? 'Join us to start searching',
          style: headline1Medium,
        ),
        SizedBox(height: lineSpacing ?? 15),
        Text(
          subText ?? 'You can search c ourse, apply course and findscholarship for abroad studies',
          textAlign: subTextAlignment ?? TextAlign.center,
          style: headLine3Grey,
        ),
      ],
    );
  }
}