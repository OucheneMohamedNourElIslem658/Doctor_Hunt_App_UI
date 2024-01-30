import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, 
      child: const Text(
        "Skip",
        style: headLine3Grey
      ) 
    );
  }
}