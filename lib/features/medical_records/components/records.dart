import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';

class Records extends StatelessWidget {
  Records({super.key});

  final listRecords = [
    {'byWho': 'you', 'forWho': 'Abdullah mamun', 'prescription': 1, 'time': DateTime.now(), 'isNew': true},
    {'byWho': 'someone else', 'forWho': 'John Doe', 'prescription': 2, 'time': DateTime.now().subtract(const Duration(days: 1)), 'isNew': true},
    {'byWho': 'another person', 'forWho': 'Jane Smith', 'prescription': 3, 'time': DateTime.now().subtract(const Duration(days: 2)), 'isNew': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listRecords.length,
        itemBuilder:(_, index) {
          final record = listRecords[index];
          final forWho = record['forWho'];
          final byWho = record['byWho'];
          final time = record['time'] as DateTime;
          final isNew = record['isNew'] as bool;
          final prescription = record['prescription'];    
          return Container(
            height: 110,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.08),
                  blurRadius: 20
                )
              ]
            ),
            child: Row(
              children: [
                TimePiece(
                  isNew: isNew,
                  day: time.day,
                  month: time.month
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Records added by $byWho',
                        style: headline27Black,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Record for $forWho',
                        style: headline9GreenRegular,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$prescription Prescription',
                        style: headline9Grey,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/menu.svg')
                  )
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class TimePiece extends StatelessWidget {
  const TimePiece({
    super.key, 
    required this.month, 
    required this.day, 
    required this.isNew,
  });

  final int month,day;
  final bool isNew;

  String getMonth(int monthNumber) {
    switch (monthNumber) {
      case 1:
        return 'JAN';
      case 2:
        return 'FEB';
      case 3:
        return 'MAR';
      case 4:
        return 'APR';
      case 5:
        return 'MAY';
      case 6:
        return 'JUN';
      case 7:
        return 'JUL';
      case 8:
        return 'AUG';
      case 9:
        return 'SEP';
      case 10:
        return 'OCT';
      case 11:
        return 'NOV';
      case 12:
        return 'DEC';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Container(
          height: 60,
          width: 55,
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(6))
          ),
          alignment: Alignment.center,
          child: Text(
            '${day.toString()}\n${getMonth(month)}',
            textAlign: TextAlign.center,
            style: headline27,
          ),
        ),
        const SizedBox(height: 6),
        isNew
        ? Container(
          width: 55,
          height: 22,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(2)),
          ),
          alignment: Alignment.center,
          child: const Text(
            'NEW',
            style: headline9Green,
          ),
        )
        : const SizedBox()
      ],
    );
  }
}