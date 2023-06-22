import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
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

class EmailLoginView extends ConsumerWidget with TrackBudiValidate {
  EmailLoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.loginStatus != newState.loginStatus) {
        if (newState.loginStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.loginStatus.isSubmissionSuccess) {
          context.router.push(SettingUp());
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
            TrackBudiTextFormField(
              onChanged: (val) =>
                  ref.read(authNotifier.notifier).loginEmailChanged(val),
              error: state.email.error?.name,
              label: 'Email address',
            ),
            heightSpace(2),
            TrackBudiTextFormField(
              onChanged: (val) =>
                  ref.read(authNotifier.notifier).loginPasswordChanged(val),
              error: state.password.error?.name,
              label: 'Password',
            ),
            heightSpace(2),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () => context.pushRoute(ResetPasswordView()),
                  child: bodyText(text: 'Forgot Password?')),
            ),
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Login',
                disable: !state.displayLoginButton,
                isLoading: state.loginStatus.isSubmissionInProgress,
                onTap: state.displayLoginButton
                    ? () => ref.read(authNotifier.notifier).mapEventsToState(
                        LoginWithEmailEvent(loginType: LoginType.email))
                    : () {}),
            heightSpace(3),
          ],
        ),
      )),
    );
  }
}
