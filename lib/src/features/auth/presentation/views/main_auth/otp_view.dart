import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_app_bar.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_countdown.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/otp_widget.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class OTPView extends HookWidget {
  AuthRepo _authRepo = AuthRepo();
  String? otp;

  OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    final isButtonDisabled = useState<bool>(false);
    final isLoading = useState<bool>(false);
    // final state = ref.watch(authNotifier.select((vaue) => vaue));
    // ref.listen(authNotifier, (previousState, newState) {
    //   if (previousState?.verifyOtpStatus != newState.verifyOtpStatus) {
    //     if (newState.verifyOtpStatus.isSubmissionFailure) {
    //       ToastResp.toastMsgError(resp: newState.exceptionError);
    //     } else if (newState.verifyOtpStatus.isSubmissionSuccess) {
    //       if (newState.otpRequestOrResendTypeEnum ==
    //           OtpRequestOrResendType.resend) {
    //         ToastResp.toastMsgSuccess(resp: newState.verifyOtpModel?.message);
    //       } else if (newState.otpRequestOrResendTypeEnum ==
    //           OtpRequestOrResendType.verifyOtp) {
    //         context.router.push(ProfileInfo());
    //       } else if (newState.otpRequestOrResendTypeEnum ==
    //           OtpRequestOrResendType.resetPasswordOtp) {
    //         context.router.push(NewPasswordView());
    //       } else if (newState.loginType == LoginType.phone ||
    //           newState.otpRequestOrResendTypeEnum ==
    //               OtpRequestOrResendType.request) {
    //         context.router.push(SettingUp());
    //       }
    //     }
    //   }
    // });
    onTap() async {
      isLoading.value = true;
      isButtonDisabled.value = true;
      bool result = await _authRepo.verifySmsOTP(otp!);

      // if (result) {
      //   context.router.replace();
      // }
    }

    return AbsorbPointer(
      // absorbing: state.verifyOtpStatus.isSubmissionInProgress,
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
                    text: '0909090909090',
                    fontSize: 14,
                    textColor: AppColors.textPrimary),
              ),
              heightSpace(3),
              Center(
                child: PinView(onChanged: (val) {}),
              ),
              heightSpace(4),
              Center(child: CountDownTime()),
              heightSpace(6),
              TrackBudiButton(
                  buttonText: 'Verify and continue',
                  disable: isButtonDisabled.value,
                  isLoading: isLoading.value,
                  onTap: onTap),
              heightSpace(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bodyText(text: 'Didn\' receive code?'),
                  widthSpace(2),
                  InkWell(
                    onTap: () {
                      // ref.read(authNotifier.notifier).mapEventsToState(
                      //     RequestOrResendPhoneOtpEvent(
                      //         otpRequestOrResendTypeEnum:
                      //             OtpRequestOrResendType.resend));
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
