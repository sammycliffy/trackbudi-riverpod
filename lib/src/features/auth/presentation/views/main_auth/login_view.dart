import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/trackbudi_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                          text: 'Login',
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
                  locale: 'NG',
                  inputDecoration:
                      const InputDecoration(enabledBorder: InputBorder.none),
                  onInputChanged: (val) {
                    log(val.toString());
                  }),
            ),
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Login',
                onTap: () => context.pushRoute(const OTPView())),
            heightSpace(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 30.w, child: const AppDivider()),
                widthSpace(6),
                customText(
                    text: 'or', fontSize: 14, textColor: AppColors.textPrimary),
                widthSpace(6),
                SizedBox(width: 30.w, child: const AppDivider()),
              ],
            ),
            heightSpace(4),
            GestureDetector(
              onTap: () => context.pushRoute(const EmailLoginView()),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                height: 8.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.textformGrey,
                    ),
                    borderRadius: BorderRadius.circular(28)),
                child: Row(children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.darkBlue),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: SvgPicture.asset(
                        AppImages.messages,
                        height: 10,
                        width: 10,
                      ),
                    ),
                  ),
                  widthSpace(2.h),
                  bodyText(text: 'Login with email')
                ]),
              ),
            ),
            heightSpace(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bodyText(text: 'Don\'t have an account?'),
                widthSpace(2),
                GestureDetector(
                  // onTap: () => context.pushRoute(LoginView()),
                  child: customText(
                      text: 'Signup',
                      fontSize: 14,
                      textColor: AppColors.textPrimary),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
