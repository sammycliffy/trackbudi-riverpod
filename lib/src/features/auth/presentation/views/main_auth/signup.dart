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
import 'package:trackbudi_mobile/src/core/shared/resources/trackbudi_txtfield.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';
import 'package:trackbudi_mobile/src/features/auth/vm/auth_event.dart';

class SignupView extends ConsumerWidget with TrackBudiValidate {
  SignupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));
    return AbsorbPointer(
      absorbing: state.phoneStatus.isSubmissionInProgress,
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
                    AppImages.signupHeading,
                    width: 100,
                    height: 100,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                            text: 'Signup',
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
                  fontSize: 14,
                  textColor: AppColors.textPrimary),
              heightSpace(1),
              TrackBudiPhoneField(
                onChanged: (phone) => ref
                    .read(authNotifier.notifier)
                    .mapEventsToState(PhoneEvent(value: phone.number)),
                validator: (v) => phoneNumberFullValidator(v?.completeNumber),
              ),
              heightSpace(4),
              TrackBudiButton(
                  buttonText: 'Sign up',
                  disable: !state.displaySignUpButton,
                  isLoading: state.phoneStatus.isSubmissionInProgress,
                  onTap: state.displaySignUpButton
                      ? () => ref
                          .read(authNotifier.notifier)
                          .mapEventsToState(RegisterPhone(
                              // countryCode:
                              ))
                      : () {}),
              heightSpace(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bodyText(text: 'Already have an account?'),
                  widthSpace(2),
                  GestureDetector(
                    child: customText(
                        text: 'Login',
                        fontSize: 14,
                        textColor: AppColors.textPrimary),
                    onTap: () => context.pushRoute(const LoginView()),
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


//() => context.pushRoute(const OTPView())
//print(phone.completeNumber);
