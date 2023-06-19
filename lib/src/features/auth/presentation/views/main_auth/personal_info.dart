import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_app_bar.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class ProfileInfo extends HookConsumerWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasAgreed = useState<bool>(false);
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    AppImages.logisticsHeading,
                    width: 100,
                    height: 100,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                            text: 'Provide your personal details',
                            fontSize: 14,
                            textColor: AppColors.textPrimary),
                        heightSpace(1),
                        bodyText(text: 'We want to know more about you')
                      ],
                    ),
                  )
                ],
              ),
              const AppDivider(),
              heightSpace(6),
              const TrackBudiTextFormField(
                label: 'First name',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Last name',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Email address',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Password',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Confirm Password',
              ),
              heightSpace(6),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => hasAgreed.value = !hasAgreed.value,
                    child: Container(
                      width: 17,
                      height: 17,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(2)),
                      child: hasAgreed.value
                          ? const Center(
                              child: Icon(
                                Icons.check,
                                size: 10,
                                color: AppColors.white,
                              ),
                            )
                          : const SizedBox(),
                    ),
                  ),
                  widthSpace(2),
                  bodyText(text: 'I agree with the', fontSize: 10),
                  widthSpace(1),
                  customText(
                      text: 'Terms and Conditions',
                      fontSize: 10,
                      textColor: AppColors.primary),
                  widthSpace(1),
                  customText(
                      text: '&',
                      fontSize: 10,
                      textColor: AppColors.textPrimary),
                  widthSpace(1),
                  customText(
                      text: 'Privacy Policy',
                      fontSize: 10,
                      textColor: AppColors.primary),
                ],
              ),
              heightSpace(3),
              TrackBudiButton(
                  buttonText: 'I accept',
                  onTap: () => context.pushRoute(AccountSelection())),
              heightSpace(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bodyText(text: 'Already have an account?'),
                  widthSpace(2),
                  GestureDetector(
                    onTap: () => context.pushRoute(LoginView()),
                    child: customText(
                        text: 'Login',
                        fontSize: 14,
                        textColor: AppColors.textPrimary),
                  )
                ],
              ),
              heightSpace(5)
            ],
          ),
        ),
      ),
    );
  }
}
