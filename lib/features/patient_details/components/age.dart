import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../controllers/datails_form.dart';

class Age extends StatelessWidget {
  Age({super.key});

  final detailFormController = Get.put(DetailsFormController());

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Age',
          style: headline27Black
        ),
        const SizedBox(height: 10),
        GetBuilder<DetailsFormController>(
          builder: (context) {
            return Row(
              children: [
                Expanded(
                  child: CustomDropDownMenu(
                    value: detailFormController.currentDay.toString(),
                    hint: 'Day',
                    items:  detailFormController.getDays(),
                    onChanged: (p0) => detailFormController.updateCurrentDay(p0),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomDropDownMenu(
                    value: detailFormController.currentMonth,
                    hint: 'Month',
                    items:  detailFormController.months,
                    onChanged: (p0) => detailFormController.updateCurrentMonth(p0)
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomDropDownMenu(
                    value: detailFormController.currentYear,
                    hint: 'Year',
                    items: detailFormController.getYearsRange(startingYear: 2000),
                    onChanged: (p0) => detailFormController.updateCurrentYear(p0)
                  ),
                ),
              ],
            );
          }
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomDropDownMenu extends StatelessWidget {
  CustomDropDownMenu({
    super.key, 
    required this.items, 
    required this.hint,
    this.onChanged, 
    this.value
  });

  final List<String> items;
  final String hint;
  Function(String?)? onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10,right: 7,top: 3,bottom: 7),
      decoration: BoxDecoration(
        border: Border.all(
          color: greyTextColor.withOpacity(0.12)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(6))
      ),
      child: DropdownButton(
        value: value,
        isExpanded: true,
        icon: SvgPicture.asset('assets/icons/arrow_down.svg'),
        style: headline23Black,
        underline: const SizedBox(),
        hint: Text(
          hint,
          style: headline23GreyBold,
        ),
        elevation: 1,
        items: items.map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(
              e
            )
          )
        ).toList(), 
        onChanged: onChanged,
      ),
    );
  }
}