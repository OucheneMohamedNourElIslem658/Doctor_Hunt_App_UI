import 'package:flutter/material.dart';

import '../constents/colors.dart';

class AddPatient extends StatelessWidget {
  const AddPatient({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 125,
        width: 100,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '+',
              style: TextStyle(
                fontSize: 50,
                color: primaryColor,
                fontFamily: 'rubik'
              ),
            ),
            Text(
              text ?? 'Add',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: primaryColor,
                fontFamily: 'rubik'
              ),
            ),
          ],
        ),
      ),
    );
  }
}