import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/widgets/custom_elevated_button.dart';
import 'info_field.dart';
import 'record_type.dart';

class RecordForm extends StatelessWidget {
  const RecordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.08),
            blurRadius: 20
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const InfoField(label: 'Record for',info: 'Abdullah Mamun'),
          const SizedBox(height: 20),
          const RecordType(),
          const SizedBox(height: 20),
          const InfoField(label: 'Record created on',info: '27 Feb, 2021'),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomElevatedButton(
              text: 'Upload record',
              onPressed: (){}
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}