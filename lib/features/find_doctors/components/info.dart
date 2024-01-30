import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

class Experiance extends StatelessWidget {
  const Experiance({
    super.key,
    required this.experiance,
  });

  final int experiance;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$experiance Years experience',
      style: headline9
    );
  }
}

class Speciality extends StatelessWidget {
  const Speciality({
    super.key,
    required this.speciality,
    required this.index
  });

  final String speciality;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      speciality,
      style: TextStyle(
        fontFamily: secondaryFont,
        color: primaryColor,
        shadows: index == 0 ? [
          BoxShadow(
            color: blackColor.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ] : null
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: headline7Black
    );
  }
}