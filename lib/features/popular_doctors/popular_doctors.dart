import '../../commun/constents/text_styles.dart';
import '../../commun/widgets/famous_doctors.dart';
import '../../commun/widgets/get_back_button.dart';
import 'package:flutter/material.dart';

import '../../commun/widgets/background.dart';
import '../../commun/widgets/search_bar.dart';
import 'components/category_doctors.dart';
import 'components/most_popular_doctors.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    GetBackButton(),
                    Spacer(),
                    SearchButton(size: 15),
                    SizedBox(width: 20)
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: FamousDoctors(categorie: 'Popular Doctor'),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: MostPopularDoctors()
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Category',
                    style: headline7Black
                  )
                ),
                SizedBox(height: 15),
                CategoryDoctors()
              ],
            ),
          ),
        )
      )
    );
  }
}