import 'package:flutter/material.dart';

import '../../../commun/constents/colors.dart';
import '../../../commun/constents/text_styles.dart';

class Recomandations extends StatelessWidget {
  const Recomandations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2, 
        (index) => Container(
          width: double.maxFinite,
          padding: const EdgeInsets.only(top: 10,bottom: 25),
          margin: const  EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.08),
                blurRadius: 20
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Advanced Young Indian Health Checkup",
                      style: headline17,
                    ),
                    Text(
                      "Ideal for individuals aged 21-40 years",
                      style: headline20Grey,
                    ),
                    SizedBox(height: 20),
                    TestsNumber(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                child: Image.asset(
                  "assets/images/post.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Pricing(),
                    ),
                    BookNowButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 27),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius
            .all(Radius.circular(6))
        )
      ), 
      child: const Text(
        "Book Now",
        style: headline9White,
      )
    );
  }
}

class Pricing extends StatelessWidget {
  const Pricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "\$ 358  ",
            style: headline7Black
          ),
          TextSpan(
            text: "\$ 330 ",
            style: headline17Grey
          ),
          TextSpan(
            text: "35% off\n",
            style: headLine3
          ),
          TextSpan(
            text: "+ 10% Health cashback T&C",
            style: headLine3Grey
          )
        ]
      )
    );
  }
}

class TestsNumber extends StatelessWidget {
  const TestsNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(
          color: primaryColor,
          width: 0.8,
        )
      ),
      child: const  Text(
        "69 tests included",
        style: headline9GreenRegular,
      ),
    );
  }
}