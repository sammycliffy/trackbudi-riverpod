import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackbudi_mobile/gen/assets.gen.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

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
                  Assets.images.resetPassword.path,
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
            heightSpace(2),
            const TrackBudiTextFormField(
              label: 'Password',
            ),
            heightSpace(2),
            SvgPicture.asset(AppImages.passwordDescription),
            heightSpace(3),
            TrackBudiButton(
                buttonText: 'Reset password',
                onTap: () => context.pushRoute( OTPView())),
            heightSpace(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bodyText(text: 'Don\t have an account?'),
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
