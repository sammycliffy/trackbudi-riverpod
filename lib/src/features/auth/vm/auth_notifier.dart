import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/usecases/auth_u.dart';
import 'package:trackbudi_mobile/src/features/auth/vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/vm/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier({
    required this.verifyOtpUsecase,
    required this.resendOtpUsecase,
    required this.loginUsecase,
    required this.updateUserProfileUsecase,
    required this.updateUserTypeUsecase,
    required this.createVendorUsecase,
    required this.createlogisticPartnerUsecase,
    required this.updateVendorUsecase,
    required this.updatelogisticPartnerUsecase,
    required this.userLoginRequestOtpUsecase,
    required this.userLoginVerifyOtpUsecase,
    required this.initiateResetPasswordUsecase,
    required this.verifyResetPasswordUsecase,
    required this.resetPasswordUsecase,
    required this.phoneOnobardingUsecase,
  }) : super(AuthState());

  final PhoneOnobardingUsecase phoneOnobardingUsecase;
  final VerifyOtpUsecase verifyOtpUsecase;
  final ResendOtpUsecase resendOtpUsecase;
  final LoginUsecase loginUsecase;
  final UpdateUserProfileUsecase updateUserProfileUsecase;
  final UpdateUserTypeUsecase updateUserTypeUsecase;
  final CreateVendorUsecase createVendorUsecase;
  final CreatelogisticPartnerUsecase createlogisticPartnerUsecase;
  final UpdateVendorUsecase updateVendorUsecase;
  final UpdatelogisticPartnerUsecase updatelogisticPartnerUsecase;
  final UserLoginRequestOtpUsecase userLoginRequestOtpUsecase;
  final UserLoginVerifyOtpUsecase userLoginVerifyOtpUsecase;
  final InitiateResetPasswordUsecase initiateResetPasswordUsecase;
  final VerifyResetPasswordUsecase verifyResetPasswordUsecase;

  final ResetPasswordUsecase resetPasswordUsecase;

  void mapEventsToState(AuthEvent authEvent) async {
    authEvent.map(
      changePohone: (PhoneEvent phoneEvent) async {
        final phoneVal = PhoneNumber.dirty(phoneEvent.value ?? '');
        state = state.copyWith(
          phoneNumber: phoneVal,
          phoneStatus: Formz.validate([phoneVal]),
        );
      },
      registerPhone: (RegisterPhone registerPhone) async {
        state = state.copyWith(phoneStatus: FormzStatus.submissionSuccess);
        var payload = {'countryCode': '+234', 'phone': '8155794698'};
        final resp = await phoneOnobardingUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(registerModel: r);
        });
      },
    );
  }
}
