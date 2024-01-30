import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key, 
    required this.child, 
    this.showGreenShadow, 
    this.showBlueShadow
  });

  final Widget child;
  final bool? showGreenShadow,showBlueShadow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        showGreenShadow == null || showGreenShadow!
        ? const Positioned(
          bottom: -50,
          right: -40,
          child: GreenShadow()
        )
        : const SizedBox(),

        showBlueShadow == null || showBlueShadow!
        ? const Positioned(
          top: -35,
          left: -100,
          child: BlueShadow()
        )
        :const SizedBox(),
        Align(
          alignment: Alignment.topCenter,
          child: child
        )
      ],
    );
  }
}

class BlueShadow extends StatelessWidget {
  const BlueShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 216,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(97, 206, 255, 0.3),
            blurRadius: 135,
          )
        ]
      ),
    );
  }
}

class GreenShadow extends StatelessWidget {
  const GreenShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 216,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(14, 190, 126, 0.22),
            blurRadius: 60,
          )
        ]
      ),
    );
  }
}