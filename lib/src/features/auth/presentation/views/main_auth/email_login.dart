import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/app_textformfield.dart';
import '../../widgets/trackbudi_button.dart';

class EmailLoginView extends StatelessWidget {
  const EmailLoginView({super.key});

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
                  AppImages.signupHeading,
                  width: 100,
                  height: 100,
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
            const TrackBudiTextFormField(
              label: 'Email address',
            ),
            heightSpace(2),
            const TrackBudiTextFormField(
              label: 'Password',
            ),
            heightSpace(2),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () => context.pushRoute(const ResetPasswordView()),
                  child: bodyText(text: 'Forgot Password?')),
            ),
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Login',
                onTap: () => context.pushRoute( OTPView())),
            heightSpace(3),
          ],
        ),
      )),
    );
  }
}
