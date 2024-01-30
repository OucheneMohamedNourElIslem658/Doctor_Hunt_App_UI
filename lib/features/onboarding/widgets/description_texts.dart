import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

class DescriptionTexts extends StatelessWidget {
  const DescriptionTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Find Trusted Doctor',
          style: headLine2
        ),
        SizedBox(height: 10),
        Text(
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
          textAlign: TextAlign.center,
          style: headLine3Grey
        ),
      ],
    );
  }
}