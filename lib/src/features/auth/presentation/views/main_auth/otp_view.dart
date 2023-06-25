import 'dart:developer';

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
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_app_bar.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/otp_widget.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class OTPView extends ConsumerWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));
    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.verifyOtpStatus != newState.verifyOtpStatus) {
        if (newState.verifyOtpStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.verifyOtpStatus.isSubmissionSuccess) {
          if (newState.otpRequestOrResendTypeEnum ==
              OtpRequestOrResendType.resend) {
            ToastResp.toastMsgSuccess(resp: newState.verifyOtpModel?.message);
          } else if (newState.otpRequestOrResendTypeEnum ==
              OtpRequestOrResendType.verifyOtp) {
            context.router.push(ProfileInfo());
          } else if (newState.otpRequestOrResendTypeEnum ==
              OtpRequestOrResendType.resetPasswordOtp) {
            context.router.push(NewPasswordView());
          } else if (newState.loginType == LoginType.phone ||
              newState.otpRequestOrResendTypeEnum ==
                  OtpRequestOrResendType.request) {
            context.router.push(SettingUp());
          }
        }
      }
    });

    return AbsorbPointer(
      absorbing: state.verifyOtpStatus.isSubmissionInProgress,
      child: Scaffold(
        appBar: appBar(),
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
                    text: state.phoneNumber.value,
                    fontSize: 14,
                    textColor: AppColors.textPrimary),
              ),
              heightSpace(3),
              Center(
                child: PinView(
                  onChanged: (optValData) => ref
                      .watch(authNotifier.notifier)
                      .onChangeOtpVal(optValData),
                ),
              ),
              heightSpace(6),
              TrackBudiButton(
                  buttonText: 'Verify and continue',
                  disable: !state.displayVerifyOtpButton,
                  isLoading: state.verifyOtpStatus.isSubmissionInProgress,
                  onTap: state.displayVerifyOtpButton
                      ? () {
                          switch (state.otpRequestOrResendTypeEnum) {
                            case OtpRequestOrResendType.resetPasswordOtp:
                              ref.read(authNotifier.notifier).mapEventsToState(
                                  VerifyResetTokenToCompleteForgotPasswordEvent());
                              break;

                            case OtpRequestOrResendType.request:
                              log('${state.otpRequestOrResendTypeEnum}');
                              ref.read(authNotifier.notifier).mapEventsToState(
                                  RequestOrResendPhoneOtpEvent(
                                      otpRequestOrResendTypeEnum:
                                          OtpRequestOrResendType.request));
                              break;
                            default:
                              ref.read(authNotifier.notifier).mapEventsToState(
                                  RequestOrResendPhoneOtpEvent(
                                      otpRequestOrResendTypeEnum:
                                          OtpRequestOrResendType.verifyOtp));
                          }
                        }
                      : () {}),
              heightSpace(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bodyText(text: 'Didn\' receive code?'),
                  widthSpace(2),
                  InkWell(
                    onTap: () {
                      ref.read(authNotifier.notifier).mapEventsToState(
                          RequestOrResendPhoneOtpEvent(
                              otpRequestOrResendTypeEnum:
                                  OtpRequestOrResendType.resend));
                    },
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
  }
}
