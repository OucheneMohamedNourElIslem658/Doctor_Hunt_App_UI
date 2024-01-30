import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class MyRatingbar extends StatelessWidget {
  const MyRatingbar({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 12,
      child: FittedBox(
        child: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => SvgPicture.asset("assets/icons/ratingStar.svg",height: 12,width: 12,),
        onRatingUpdate: (rating) {},
        unratedColor: const Color(0xFFE2E5EA),
        ),
      ),
    );
  }
}