import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';

class ArrowForward extends StatelessWidget {
  const ArrowForward({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 3.14,
      child: SvgPicture.asset('assets/icons/back_arrow.svg',)
    );
  }
}

class CustomDevider extends StatelessWidget {
  const CustomDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 1,color: primaryColor.withOpacity(0.06));
  }
}