import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/toast_r.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_app_bar.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/checkbox.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class ProfileInfo extends ConsumerWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));
    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.updateProfileStatus != newState.updateProfileStatus) {
        if (newState.updateProfileStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.updateProfileStatus.isSubmissionSuccess) {
          context.router.push(AccountSelection());
        }
      }
    });
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
              TrackBudiTextFormField(
                label: 'First name',
                onChanged: (val) =>
                    ref.read(authNotifier.notifier).firstNameChanged(val),
                error: state.fname.error?.name,
              ),
              heightSpace(2),
              TrackBudiTextFormField(
                onChanged: (val) =>
                    ref.read(authNotifier.notifier).lastNameChanged(val),
                error: state.lname.error?.name,
                label: 'Last name',
              ),
              heightSpace(2),
              TrackBudiTextFormField(
                onChanged: (val) =>
                    ref.read(authNotifier.notifier).emailChanged(val),
                error: state.email.error?.name,
                label: 'Email address',
              ),
              heightSpace(2),
              TrackBudiTextFormField(
                label: 'Password',
                onChanged: (val) =>
                    ref.read(authNotifier.notifier).passwordChanged(val),
                error: state.password.error?.name,
              ),
              heightSpace(2),
              TrackBudiTextFormField(
                onChanged: (val) =>
                    ref.read(authNotifier.notifier).rePasswordChanged(val),
                error: state.rePassword.error?.name,
                label: 'Confirm Password',
              ),
              heightSpace(6),
              Row(
                children: [
                  checkbox(),
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
                  disable: !state.displayUpdateProfileButton,
                  isLoading: state.updateProfileStatus.isSubmissionInProgress,
                  buttonText: 'I accept',
                  onTap: state.displayUpdateProfileButton ? () {} : () {}),
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
