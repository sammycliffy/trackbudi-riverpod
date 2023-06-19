import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/toast_r.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/onboard/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/otp_widget.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(authNotifier.select((s) => s));
      ref.listen(authNotifier, (previousState, newState) {
        if (newState.verifyOtpStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.verifyOtpStatus.isSubmissionSuccess) {
          context.router.push(ProfileInfo());
        }
      });

      return AbsorbPointer(
        absorbing: state.verifyOtpStatus.isSubmissionInProgress,
        child: Scaffold(
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
                      text: state.userPhoneOnboardingModel?.phone ??
                          '894 534 6783',
                      fontSize: 14,
                      textColor: AppColors.textPrimary),
                ),
                heightSpace(3),
                Center(
                  child: PinView(
                    onChanged: (optValData) => ref
                        .read(authNotifier.notifier)
                        .onChangeOtpVal(optValData),
                  ),
                ),
                heightSpace(6),
                TrackBudiButton(
                    buttonText: 'Verify and continue',
                    disable: !state.displayVerifyOtpButton,
                    isLoading: state.verifyOtpStatus.isSubmissionInProgress,
                    onTap: state.displayVerifyOtpButton
                        ? () => ref
                            .read(authNotifier.notifier)
                            .mapEventsToState(RequestOrResendPhoneOtpEvent(
                                otpRequestOrResendTypeEnum:
                                    OtpRequestOrResendType.verifyOtp))
                        : () {}),
                heightSpace(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bodyText(text: 'Didn\' receive code?'),
                    widthSpace(2),
                    InkWell(
                      onTap: () => ref
                          .read(authNotifier.notifier)
                          .mapEventsToState(RequestOrResendPhoneOtpEvent(
                              otpRequestOrResendTypeEnum:
                                  OtpRequestOrResendType.resend)),
                      child: customText(
                          text: 'Request again',
                          fontSize: 14,
                          textColor: AppColors.textPrimary),
                    )
                  ],
                )
              ],
            ),
          )),
        ),
      );
    });
  }
}
