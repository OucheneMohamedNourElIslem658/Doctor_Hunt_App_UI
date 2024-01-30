import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

class Performance extends StatelessWidget {
  const Performance({
    super.key,
    required this.rating,
    required this.stories,
  });

  final int rating;
  final int stories;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StatisticRow(number: rating, counted: '%',),
        StatisticRow(number: stories ,counted: ' Patient Stories')
      ],
    );
  }
}

class StatisticRow extends StatelessWidget {
  const StatisticRow({
    super.key,
    required this.number,
    this.counted
  });

  final int number;
  final String? counted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.circle,color: primaryColor,size: 10),
        const SizedBox(width: 3),
        Text(
          '$number${counted ?? ''}',
          style: headline13
        )
      ],
    );
  }
}