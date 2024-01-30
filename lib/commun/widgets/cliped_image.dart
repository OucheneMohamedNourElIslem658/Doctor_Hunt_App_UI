import 'package:flutter/material.dart';

class ClipedImage extends StatelessWidget {
  const ClipedImage({
    super.key,
    required this.familyMember,
  });

  final String familyMember;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        image: DecorationImage(
          image: AssetImage('assets/images/$familyMember.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}