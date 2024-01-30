import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../controllers/datails_form.dart';

class Gender extends StatelessWidget {
  Gender({super.key});

  final detailsFormController = Get.put(DetailsFormController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: headline27Black
        ),
        const SizedBox(height: 10),
        GetBuilder<DetailsFormController>(
          builder: (context) {
            return Row(
              children: List.generate(
                detailsFormController.gender.length, 
                (index) {
                  final gender = detailsFormController.gender[index];
                  final type = gender['type'] as String;
                  final isSelected = gender['isSelected'] as bool;
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () => detailsFormController.selectGender(index),
                        child: Container(
                          height: 16,
                          width: 16,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: greyTextColor,
                              width: 0.8
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8)
                            )
                          ),
                          child: isSelected 
                            ? Container(
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                            ) 
                            : null,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        type,
                        style: headline23Grey,
                      ),
                      const SizedBox(width: 25)
                    ],
                  );
                }
              ),
            );
          }
        )
      ],
    );
  }
}