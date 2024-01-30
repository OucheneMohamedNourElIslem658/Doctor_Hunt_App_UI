import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';

class Services extends StatelessWidget {
  Services({super.key});

  final services = [
    'Patient care should be the number one priority',
    'If you run your practiceyou know how frustrating',
    'That’s why some of appointment reminder system'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Services',
          style: TextStyle(
            fontFamily: 'rubikMedium',
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            services.length, 
            (index) {
              final service = services[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Service(service: service,index: index),
                  index != services.length-1
                  ?Container(
                    height: 0.8,
                    color: greyTextColor.withOpacity(0.1),
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 17
                    )
                  )
                  :const SizedBox()
                ],
              );
            }
          ),
        )
      ],
    );
  }
}

class Service extends StatelessWidget {
  const Service({
    super.key,
    required this.service,
    required this.index
  });

  final String service;
  final int index;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${index+1}.  ',
            style: const TextStyle(
              color: primaryColor,
              fontSize: 13,
              fontFamily: 'rubikMedium'
            )
          ),
          TextSpan(
            text: '$service.',
            style: const TextStyle(
              color: greyTextColor,
              fontSize: 13,
              fontFamily: 'rubik'
            )
          )
        ]
      )
    );
  }
}