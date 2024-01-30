import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';

class QuestionsList extends StatelessWidget {
  QuestionsList({super.key});

  final issues = [
    'Booking a new Appointment',
    'Existing Appointment',
    'Online consultations',
    'Feedbacks',
    'Medicine orders',
    'Diagnostic Tests',
    'Health plans',
    'My account and Practo Drive'
    'Have a feature in mind',
    'Other issues'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.05),
                  blurRadius: 20
                )
              ]
            ),
            child: const Text(
              'I have an issue with',
              style: headLine28,
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              itemCount: issues.length,
              itemBuilder:(context, index) => Padding(
                padding: const  EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        issues[index],
                        style: headLine28Grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: SvgPicture.asset(
                        'assets/icons/next.svg',
                        // ignore: deprecated_member_use
                        color: greyTextColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}