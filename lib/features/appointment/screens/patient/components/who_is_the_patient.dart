import 'package:flutter/material.dart';

import '../../../../../commun/constents/colors.dart';
import '../../../../../commun/widgets/cliped_image.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    final images = ['teen','baby','girl'];
    final familyMembers = ['My Self','My child','My wife'];
    return Row(
      children: List.generate(
        images.length, 
        (index) {
          final familyMember = images[index];
          return Column(
            children: [
              ClipedImage(familyMember: familyMember),
              const SizedBox(height: 7),
              Text(
                familyMembers[index],
                style: const TextStyle(
                  color: greyTextColor,
                  fontSize: 14,
                  fontFamily: 'rubik'
                ),
              )
            ],
          );
        }
      ),
    );
  }
}