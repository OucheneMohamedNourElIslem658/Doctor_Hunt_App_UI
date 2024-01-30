import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:flutter/material.dart';

class FamousDoctors extends StatelessWidget {
  const FamousDoctors({
    super.key,
    required this.categorie,
    this.onPressed
  });

  final String categorie;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categorie,
          style: headline7Black
        ),
        SeeMoreButton(
          onPressed: onPressed,
        )
      ],
    );
  }
}

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    super.key, 
    required this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: TextButton(
        onPressed: onPressed, 
        child: const Text(
          "See all>",
          style: headline9
        ),
      ),
    );
  }
}