import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:trackbudi_mobile/gen/assets.gen.dart';
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

class NewPasswordView extends ConsumerWidget with TrackBudiValidate {
  NewPasswordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.forgotPasswordSatus != newState.loginStatus) {
        if (newState.forgotPasswordSatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.forgotPasswordSatus.isSubmissionSuccess) {
          context.router.push(LoginView());
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
            TrackBudiTextFormField(
              onChanged: (val) => ref
                  .read(authNotifier.notifier)
                  .forgotPasswordEmailChanged(val),
              error: state.email.error?.name,
              label: 'Email address',
            ),
            heightSpace(2),
            TrackBudiTextFormField(
              onChanged: (val) => ref
                  .read(authNotifier.notifier)
                  .forgotPasswordTextChanged(val),
              error: state.password.error?.name,
              label: 'Password',
            ),
            heightSpace(2),
            SvgPicture.asset(AppImages.passwordDescription),
            heightSpace(3),
            TrackBudiButton(
                buttonText: 'Reset password',
                disable: !state.displayCompleteResetPasswordButton,
                isLoading: state.forgotPasswordSatus.isSubmissionInProgress,
                onTap: state.displayCompleteResetPasswordButton
                    ? () => ref
                        .read(authNotifier.notifier)
                        .mapEventsToState(CompleteForgotPasswordEvent())
                    : () {}),
            heightSpace(3),
            GestureDetector(
              onTap: () => context.pushRoute(SignupView()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bodyText(text: 'Don\t have an account?'),
                  widthSpace(2),
                  customText(
                      text: 'Signup',
                      fontSize: 14,
                      textColor: AppColors.textPrimary)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
