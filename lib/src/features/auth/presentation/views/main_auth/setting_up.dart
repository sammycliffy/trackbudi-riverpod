import 'package:flutter/material.dart';

import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';

class SettingUp extends StatelessWidget {
  const SettingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: customText(
                text: 'All done!', fontSize: 16, textColor: AppColors.white),
          ),
          heightSpace(2),
          Center(
            child: customText(
                text: 'Setting up your dashboard',
                fontSize: 20,
                textColor: AppColors.white),
          )
        ],
      ),
    );
  }
}
