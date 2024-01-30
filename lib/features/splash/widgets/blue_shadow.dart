import 'package:flutter/material.dart';

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
            color: Color.fromRGBO(97, 206, 255, 0.72),
            blurRadius: 135,
          )
        ]
      ),
    );
  }
}