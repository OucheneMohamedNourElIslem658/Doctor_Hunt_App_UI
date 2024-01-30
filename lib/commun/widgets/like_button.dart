import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
    required this.liked,
    this.size
  });

  final bool liked;
  final double? size;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late bool liked;

  @override
  void initState() {
    liked = widget.liked;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        liked = !liked;
      }),
      child: SvgPicture.asset(
        liked
        ? 'assets/icons/like2_filled.svg'
        : 'assets/icons/like_2.svg',
        width: widget.size,
      ),
    );
  }
}