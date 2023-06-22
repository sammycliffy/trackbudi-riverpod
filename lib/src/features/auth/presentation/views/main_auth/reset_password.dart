import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/mixin/trackbudi_mixin.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/toast_r.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class ResetPasswordView extends ConsumerWidget with TrackBudiValidate {
  ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.InitiateforgotPasswordSatus !=
          newState.InitiateforgotPasswordSatus) {
        if (newState.InitiateforgotPasswordSatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.InitiateforgotPasswordSatus.isSubmissionSuccess) {
          context.router.push(OTPView());
        }
      }
    });
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
            TrackBudiTextFormField(
              onChanged: (val) => ref
                  .read(authNotifier.notifier)
                  .iniatietResetEmailChanged(val),
              error: state.email.error?.name,
              label: 'Email address',
            ),
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Continue',
                // onTap: () => context.pushRoute(const NewPasswordView())),

                disable: !state.displayForgotPasswordButton,
                isLoading:
                    state.InitiateforgotPasswordSatus.isSubmissionInProgress,
                onTap: state.displayForgotPasswordButton
                    ? () => ref
                        .read(authNotifier.notifier)
                        .mapEventsToState(InitiateForgotPasswordEvent())
                    : () {}),
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
