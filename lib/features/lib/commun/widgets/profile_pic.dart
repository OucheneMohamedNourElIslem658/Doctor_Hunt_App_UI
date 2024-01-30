import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    this.size,
    required this.image
  });

  final double? size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 60,
      width: size ?? 60,
      child: ClipOval(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}