import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../controllers/switch.dart';
import 'utils.dart';

class MoreOptions extends StatelessWidget {
  MoreOptions({super.key});

  final switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: List.generate(
            switchController.switches.length, 
            (index) {
              bool isActivated = switchController.switches[index]['isActivated'] as bool;
              final name = switchController.switches[index]['name'] as String;
              return GetBuilder<SwitchController>(
                builder: (_) {
                  return Option(
                    name: name,
                    onPressed: () {
                      switchController.controlSwitch(index);
                      isActivated = switchController.switches[index]['isActivated'] as bool;
                    },
                    trailing: CustomSwitch(
                      isActivated: isActivated,
                    )
                  );
                }
              );
            },
          ),
        ),
        
        Option(
          name: 'Languages',
          onPressed: (){},
          trailing: const Row(
            children: [
              Text(
                'English',
                style: headline9,
              ),
              SizedBox(width: 5),
              ArrowForward(),
            ],
          ),
        ),

        Option(
          name: 'Currency',
          onPressed: (){},
          trailing: const Row(
            children: [
              Text(
                '\$-USD',
                style: headline9,
              ),
              SizedBox(width: 5),
              ArrowForward(),
            ],
          ),
        ),

        Option(
          name: 'Linked accounts',
          onPressed: (){},
          trailing: const Row(
            children: [
              Text(
                'Facebook, Google',
                style: headline9,
              ),
              SizedBox(width: 5),
              ArrowForward(),
            ],
          ),
        )
      ],
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.name, 
    required this.onPressed,
    required this.trailing
  });

  final String name;
  final VoidCallback onPressed;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: primaryColor.withOpacity(0.06)
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: headline23Grey,
            ),
            trailing
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.isActivated
  });

  final bool isActivated;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 35,
      height: 22,
      duration: const Duration(milliseconds: 100),
      alignment: isActivated
        ? Alignment.centerRight
        : Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 1,vertical: 2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(11)),
        color: isActivated
          ? primaryColor
          : whiteColor
      ),
      child: Container(
        width: 18,
        decoration: BoxDecoration(
          color: isActivated
            ? whiteColor
            : primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
      ),
    );
  }
}