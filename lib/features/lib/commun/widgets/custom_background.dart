import 'package:flutter/material.dart';

import 'decoration_shadows.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({
    super.key, 
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: BlueShadow(),
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child: GreenShadow(),
        ),
        SafeArea(
          child: content
        )
      ],
    );
  }
}