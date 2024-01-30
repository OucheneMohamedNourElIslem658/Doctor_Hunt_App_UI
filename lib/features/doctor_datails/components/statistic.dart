import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';

class Statistic extends StatelessWidget {
  const Statistic({super.key});

  @override
  Widget build(BuildContext context) {
    final statistics = [
      {'count': 100,'type': 'Runing'},
      {'count': 500,'type': 'Ongoing'},
      {'count': 700,'type': 'Patient'}
    ];

    return Container(
      width: Get.width-80,
      height: 84,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 20,
            color: Color.fromRGBO(0, 0, 0, 0.08),
          ),
        ]
      ),
      child: Row(
        children: List.generate(
          statistics.length, 
          (index) {
            final statistic = statistics[index];
            return Expanded(
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFCBCBCB).withOpacity(0.12),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      statistic['count'].toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'rubikMedium'
                      ),
                    ),
                    Text(
                      statistic['type'].toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: greyTextColor,
                        fontFamily: 'rubik'
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}