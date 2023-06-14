import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splashBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AppImages.splashCircle),
            heightSpace(15),
            Center(
              child: SvgPicture.asset(AppImages.logo),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: customText(
                  text:
                      'The end-to-end solution for logisitics and e-commerce management',
                  fontSize: 20,
                  textColor: AppColors.textPrimary),
            ),
            heightSpace(5),
            Center(
              child: Image.asset(
                AppImages.truck,
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => context.pushRoute(const OnboardingScreen()));
  }
}
