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

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
                  AppImages.resetHeading,
                  width: 100,
                  height: 100,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                          text: 'Reset Password',
                          fontSize: 14,
                          textColor: AppColors.textPrimary),
                      heightSpace(1),
                      bodyText(
                          text: 'Fill the field below to reset your password')
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
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Continue',
                onTap: () => context.pushRoute(const NewPasswordView())),
            heightSpace(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bodyText(text: 'Don\t have an account'),
                widthSpace(2),
                customText(
                    text: 'Signup',
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
