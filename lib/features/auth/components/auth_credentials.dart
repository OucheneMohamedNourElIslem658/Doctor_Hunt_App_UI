import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';

class AuthCredentials extends StatelessWidget {
  const AuthCredentials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SignInCredentialButton(
            icon: 'assets/icons/google.svg',
            text: 'Google',
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: SignInCredentialButton(
            icon: 'assets/icons/facebook.svg',
            text: 'Faceboook',
          ),
        ),
      ],
    );
  }
}

class SignInCredentialButton extends StatelessWidget {
  const SignInCredentialButton({
    super.key,
    required this.icon,
    required this.text
  });

  final String icon,text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.06),
            blurRadius: 22,
          )
        ]
      ),
      child: ElevatedButton(
        onPressed: (){}, 
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          backgroundColor: whiteColor,
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 12),
            Text(
              text,
              style: headline23Grey
            )
          ],
        )
      ),
    );
  }
}