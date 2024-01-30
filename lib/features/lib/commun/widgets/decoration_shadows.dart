import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GreenShadow extends StatelessWidget{
  const GreenShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 80,sigmaY: 80),
      child: SvgPicture.asset("assets/images/greenShadow.svg"),
    );
  }
}

class BlueShadow extends StatelessWidget {
  const BlueShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 150,sigmaY: 150),
      child: SvgPicture.asset("assets/images/blueShadow.svg",)
    );
  }
}