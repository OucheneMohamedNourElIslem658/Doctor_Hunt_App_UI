import 'package:flutter/material.dart';

import '../constents/colors.dart';

class BottomSheetDragLine extends StatelessWidget {
  const BottomSheetDragLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 130,
      decoration: const BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}