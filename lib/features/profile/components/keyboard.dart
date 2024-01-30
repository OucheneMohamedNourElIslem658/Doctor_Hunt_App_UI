import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';
import '../controllers/keyboard.dart';

class CustomKeyBoard extends StatelessWidget {
  CustomKeyBoard({super.key});

  final keyBoardController = Get.put(KeyboardController());

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: GetBuilder<KeyboardController>(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  10, 
                  (index) => LetterButton(
                    text: keyBoardController.letters[index], 
                  )
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  9, 
                  (index) => LetterButton(
                    text: keyBoardController.letters[index+10], 
                  )
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ControllButton(
                    onTap: () => keyBoardController.changeTheCase(),
                    child: SvgPicture.asset(
                      'assets/icons/arrow_up.svg',
                    )
                  ),
                  const SizedBox(width: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      7, 
                      (index) => LetterButton(
                        text: keyBoardController.letters[index+19], 
                      )
                    ),
                  ),
                  ControllButton(
                    onTap: (){},
                    child: SvgPicture.asset('assets/icons/delete.svg')
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ControllButton(
                    onTap: (){},
                    child: const Text(
                      '123',
                      style: headLine32White,
                    )
                  ),
                  const SizedBox(width: 5),
                  ControllButton(
                    onTap: (){},
                    child: SvgPicture.asset('assets/icons/emoji.svg')
                  ),
                  const SizedBox(width: 5),
                  ControllButton(
                    onTap: (){},
                    child: SvgPicture.asset('assets/icons/mic.svg')
                  ),
                  const SizedBox(width: 5),
                  LetterButton(
                    text: 'space', 
                    style: headLine32,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                  ),
                  ControllButton(
                    onTap: () {},
                    child: const Text(
                      'return',
                      style: headLine32White,
                    )
                  ),
                ],
              )
            ],
          );
        }
      ),
    );
  }
}

class LetterButton extends StatelessWidget {
  LetterButton({
    super.key, 
    required this.text, 
    this.padding,
    this.style,
    this.alignment,
  });

  final String text;
  final TextStyle? style;
  final Alignment? alignment;
  final EdgeInsetsGeometry? padding;

  final keyBoardController = Get.put(KeyboardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: InkWell(
        onTap: () => keyBoardController.typeLetter(text),
        child: Container(
          padding: padding,
          constraints: const BoxConstraints(minHeight: 43,minWidth: 30,),
          alignment: alignment ?? const Alignment(-0.3, -0.5),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.3),
                offset: const Offset(0, 1),
                blurRadius: 1
              )
            ]
          ),
          child: Text(
            text,
            style: style ?? headLine31
          ),
        ),
      ),
    );
  }
}

class ControllButton extends StatelessWidget {
  const ControllButton({
    super.key, 
    required this.child, 
    required this.onTap
  });

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.3),
              offset: const Offset(0, 1),
              blurRadius: 1
            )
          ]
        ),
        child: child,
      ),
    );
  }
}
