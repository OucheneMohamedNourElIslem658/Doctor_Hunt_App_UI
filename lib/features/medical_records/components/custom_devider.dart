import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

class CustomDevider extends StatelessWidget {
  const CustomDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blackColor.withOpacity(0.1),
      height: 0.8,
    );
  }
}