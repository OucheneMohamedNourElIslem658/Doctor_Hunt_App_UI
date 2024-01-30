import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/text_styles.dart';
import 'custom_devider.dart';

class RecordType extends StatelessWidget {
  const RecordType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Type of record',
          style: headline23BlackBold,
        ),
        const SizedBox(height: 15),
        Row(
          children: List.generate(
            3, 
            (index) {
              return Container(
                margin: const EdgeInsets.only(right: 40),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/report.svg'),
                    const Text(
                      'Report',
                      style: headline26Grey,
                    ),
                    const CustomDevider()
                  ],
                ),
              );
            }
          ),
        ),
        const SizedBox(height: 20),
        const CustomDevider(),
      ],
    );
  }
}