import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import 'custom_devider.dart';

class InfoField extends StatelessWidget {
  const InfoField({
    super.key, 
    required this.label, 
    required this.info,
  });

  final String label,info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: headline23BlackBold,
                  ),
                  TextField(
                    controller: TextEditingController(text: info),
                    cursorColor: primaryColor,
                    style: headline17Green,
                    enabled: false,
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none
                    ),
                  )
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/edit.svg')
          ],
        ),
        const SizedBox(height: 5),
        const CustomDevider()
      ],
    );
  }
}