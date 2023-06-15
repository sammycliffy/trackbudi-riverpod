import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/trackbudi_button.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

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
                Image.asset(
                  AppImages.verifyHeading,
                  width: 100,
                  height: 100,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                          text: 'Verify code',
                          fontSize: 14,
                          textColor: AppColors.textPrimary),
                      heightSpace(1),
                      bodyText(text: 'Verify your phone number')
                    ],
                  ),
                )
              ],
            ),
            const AppDivider(),
            heightSpace(6),
            Center(
              child: bodyText(text: 'Enter the code sent to you at'),
            ),
            heightSpace(1),
            Center(
              child: customText(
                  text: '894 534 6783',
                  fontSize: 14,
                  textColor: AppColors.textPrimary),
            ),
            heightSpace(3),
            Center(
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                defaultPinTheme: PinTheme(
                    textStyle: const TextStyle(fontSize: 40),
                    height: 57,
                    width: 65,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(
                            color: AppColors.textGrey.withOpacity(.3)),
                        borderRadius: BorderRadius.circular(9))),
                focusedPinTheme: PinTheme(
                    height: 57,
                    width: 65,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGrey),
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            heightSpace(6),
            TrackBudiButton(
              buttonText: 'Verify and continue',
              onTap: () => context.pushRoute(const ProfileInfo()),
            ),
            heightSpace(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bodyText(text: 'Didn\' receive code?'),
                widthSpace(2),
                customText(
                    text: 'Request again',
                    fontSize: 14,
                    textColor: AppColors.textPrimary)
              ],
            )
          ],
        ),
      )),
    );
  }
}
