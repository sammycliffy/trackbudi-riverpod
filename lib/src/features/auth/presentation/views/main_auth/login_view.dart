import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
import 'package:trackbudi_mobile/src/core/shared/resources/trackbudi_txtfield.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class LoginView extends ConsumerWidget with TrackBudiValidate {
  LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.phoneStatus != newState.phoneStatus) {
        if (newState.phoneStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.phoneStatus.isSubmissionSuccess) {
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
                  AppImages.logisticsHeading,
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
            customText(
                text: 'Phone number',
                fontSize: 11,
                textColor: AppColors.textPrimary),
            heightSpace(1),
            heightSpace(1),
            TrackBudiPhoneField(
              enabled: !state.loginStatus.isSubmissionInProgress,
              onChanged: (phone) => ref
                  .read(authNotifier.notifier)
                  .mapEventsToState(PhoneEvent(
                      value: phone.number, countryCode: phone.countryCode)),
              validator: (v) => phoneNumberFullValidator(v?.completeNumber),
            ),
            heightSpace(4),
            TrackBudiButton(
                buttonText: 'Login',
                disable: !state.displaySignUpButton,
                isLoading: state.phoneStatus.isSubmissionInProgress,
                onTap: state.displaySignUpButton
                    ? () => ref.read(authNotifier.notifier).mapEventsToState(
                        LoginWithPhoneEvent(loginType: LoginType.phone))
                    : () {}),
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
              onTap: () => context.pushRoute(EmailLoginView()),
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
                  onTap: () => context.pushRoute(SignupView()),
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
