import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/logo.svg"),
        const SizedBox(height: 10),
        const Text(
          'Doctor Hunt',
          style: headline1Black
        )
      ],
    );
  }
}