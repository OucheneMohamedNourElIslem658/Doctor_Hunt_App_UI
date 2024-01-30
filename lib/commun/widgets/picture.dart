import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  const Picture({
    super.key,
    required this.imageWidth,
    this.imageHeight
  });

  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageWidth ?? 71,
      height: imageHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        image: DecorationImage(
          image: AssetImage('assets/images/doctor 4.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}