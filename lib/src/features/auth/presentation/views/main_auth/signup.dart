import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/trackbudi_button.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.signupRoundImage,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                          text: 'Signup',
                          fontSize: 14,
                          textColor: AppColors.textPrimary),
                      heightSpace(1),
                      bodyText(
                          text:
                              'Real-time tracking for a stress-free shipping experience')
                    ],
                  ),
                )
              ],
            ),
            const AppDivider(),
            heightSpace(8),
            customText(
                text: 'Phone number',
                fontSize: 14,
                textColor: AppColors.textPrimary),
            heightSpace(1),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textformGrey),
                  borderRadius: BorderRadius.circular(8)),
              child: InternationalPhoneNumberInput(
                  inputDecoration:
                      const InputDecoration(enabledBorder: InputBorder.none),
                  onInputChanged: (val) {
                    log(val.toString());
                  }),
            ),
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Sign up',
                onTap: () => context.pushRoute(const OTPView())),
            heightSpace(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bodyText(text: 'Already have an account?'),
                widthSpace(2),
                GestureDetector(
                  child: customText(
                      text: 'Login',
                      fontSize: 14,
                      textColor: AppColors.textPrimary),
                  onTap: () => context.pushRoute(const LoginView()),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
