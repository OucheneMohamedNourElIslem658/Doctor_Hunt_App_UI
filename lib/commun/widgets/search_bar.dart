import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constents/colors.dart';

// ignore: must_be_immutable
class MySearchBar extends StatelessWidget {
  MySearchBar({
    super.key,
    required this.size,
    this.onTap,
    this.focusNode,
    this.enable,
    this.controller,
    this.onChanged,
    this.onClear
  });

  final Size size;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final bool? enable;
  final TextEditingController? controller;
  Function(String)? onChanged;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.08),
              offset: Offset(0, 0),
              blurRadius: 20.0,
              spreadRadius: 0.0,
            ),
          ]
        ),
        child: Row(
          children: [
            const SizedBox(width: 25),
            const SearchButton(),
            const SizedBox(width: 15),
            Expanded(
              child: TextField(
                controller: controller,
                onChanged: onChanged,
                focusNode: focusNode,
                cursorColor: primaryColor,
                onTap: onTap ?? (){},
                enabled: enable,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search.....',
                  hintStyle: headline6
                ),
              )
            ),
            InkWell(
              onTap: onClear ?? (){},
              child: SvgPicture.asset("assets/icons/deleteIcon.svg"),
            ),
            const SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    this.size
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      child: SvgPicture.asset(
        "assets/icons/searchIcon.svg",
        height: size,
      )
    );
  }
}