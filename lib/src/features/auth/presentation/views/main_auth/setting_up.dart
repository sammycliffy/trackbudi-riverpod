import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';

import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';

class SettingUp extends StatefulWidget {
  const SettingUp({super.key});

  @override
  State<SettingUp> createState() => _SettingUpState();
}

class _SettingUpState extends State<SettingUp> {
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),
        () => context.router.replace(const CommunityGuildelinePreview()));
  }
}
