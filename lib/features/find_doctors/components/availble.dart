import '../../../commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

class WorkTime extends StatelessWidget {
  const WorkTime({
    super.key,
    required this.availbleTime,
  });

  final String availbleTime;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: availbleTime.substring(0,5),
            style: headline15
          ),
          TextSpan(
            text: ' ${availbleTime.substring(6,8)} ${availbleTime.substring(9)}',
            style: headline9
          ),
        ]
      )
    );
  }
}

class NextAvailable extends StatelessWidget {
  const NextAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Next Available',
      style: headline14
    );
  }
}