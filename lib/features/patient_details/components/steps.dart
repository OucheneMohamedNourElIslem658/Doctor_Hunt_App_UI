import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';

class Steps extends StatelessWidget {
  const Steps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.symmetric(horizontal: 14,vertical: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.05),
            blurRadius: 20,
          )
        ]
      ),
      child: const Row(
        children: [
          Text(
            'Step 1/4',
            style: headline27Black,
          ),
          SizedBox(width: 15),
          Expanded(
            child: ProgresIndicator(persent: 25),
          )
        ],
      ),
    );
  }
}

class ProgresIndicator extends StatelessWidget {
  const ProgresIndicator({
    super.key, 
    required this.persent,
  });

  final int persent;

  @override
  Widget build(BuildContext context) {
    final persentValue = persent.clamp(0,100);
    return Container(
      height: 5,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.3),
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        children: [
          Expanded(
            flex: persentValue,
            child: Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
          Expanded(
            flex: 100-persentValue,
            child: const SizedBox()
          )
        ],
      ),
    );
  }
}