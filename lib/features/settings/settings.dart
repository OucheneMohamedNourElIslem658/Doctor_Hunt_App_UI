import 'package:find_doctor_app/commun/constents/text_styles.dart';
import 'package:find_doctor_app/commun/widgets/background.dart';
import 'package:find_doctor_app/commun/widgets/screen_title_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/account_settings.dart';
import 'components/more_options.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const ScreenTitleAppBar(title: 'Settings'),
                const SizedBox(height: 25),
                const Text(
                  'Account settings',
                  style: headline7Grey,
                ),
                const AccountSettings(),
                const SizedBox(height: 25),
                const Text(
                  'More options',
                  style: headline7Grey,
                ),
                MoreOptions()
              ],
            ),
          )
        ),
      ),
    );
  }
}