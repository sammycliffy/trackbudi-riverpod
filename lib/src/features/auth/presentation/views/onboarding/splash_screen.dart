import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackbudi_mobile/gen/assets.gen.dart';

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
  AssetImage? backgroundImage;
  Image? truckImage;
  Image? circle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage!,
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
            Center(child: truckImage),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(backgroundImage!, context);
    precacheImage(truckImage!.image, context);
  }

  @override
  void initState() {
    super.initState();
    backgroundImage = const AssetImage(AppImages.splashBackground);
    truckImage = Image.asset(
      Assets.images.truck.path,
      width: 50,
      height: 50,
    );

    Timer(const Duration(seconds: 3),
        () => context.router.replace(const OnboardingScreen()));
  }
}
