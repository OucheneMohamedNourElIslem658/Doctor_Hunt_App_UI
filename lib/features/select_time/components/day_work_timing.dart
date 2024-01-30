import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

// ignore: must_be_immutable
class DayWorkTiming extends StatelessWidget {
  DayWorkTiming({
    super.key, 
    required this.day, 
    required this.slotsAvailble, 
    this.isHilited = false
  });

  final String day;
  final int slotsAvailble;
  bool isHilited;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isHilited ? primaryColor : null,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: isHilited ? null : Border.all(
          color: customOutlinedButtonBorderColor1,
          width: 1
        )
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              color: !isHilited ? blackColor : whiteColor,
              fontSize: 16,
              fontFamily: 'rubikMedium',
            ),
          ),
          Text(
            '${slotsAvailble == 0 ? 'No' : slotsAvailble} slots available',
            style: TextStyle(
              color: !isHilited ? greyTextColor: whiteColor,
              fontSize: 10,
              fontFamily: 'rubik',
            ),
          )
        ],
      ),
    );
  }
}