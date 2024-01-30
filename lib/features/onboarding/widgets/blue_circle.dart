import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

class BlueCircle extends StatelessWidget {
  const BlueCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(170)),
        gradient: LinearGradient(
          colors: [
            greenLinear1.withOpacity(0.84),
            greenLinear2.withOpacity(0.95)
          ]
        )
      ),
    );
  }
}