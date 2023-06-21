import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:trackbudi_mobile/src/config/db/m.dart';
import 'package:trackbudi_mobile/src/config/db/secure_storage.dart';
import 'package:trackbudi_mobile/src/config/di/injector.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
import 'package:trackbudi_mobile/src/config/keys/local_leys.dart';
import 'package:trackbudi_mobile/src/config/service/api/app_error.dart';
import 'package:trackbudi_mobile/src/core/mixin/input_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_reval.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_state.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/usecases/auth_u.dart';

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
  final secureStore = si<SecureStore>();
  onChangeOtpVal(String otpVal) async {
    final otpValAbstract = Name.dirty(otpVal);
    if (otpVal.length == 4) {
      state = state.copyWith(
        otpVal: otpValAbstract,
        verifyOtpStatus: Formz.validate([otpValAbstract]),
      );
      log('otpVal : ${state.otpVal.value}');
    }
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      updateProfileStatus: Formz.validate(
          [email, state.fname, state.lname, state.password, state.rePassword]),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      updateProfileStatus: Formz.validate(
          [state.fname, state.lname, state.email, password, state.rePassword]),
    );
  }

  void rePasswordChanged(String value) {
    final rePassword = RePassword.dirty(value);
    state = state.copyWith(
      rePassword: rePassword,
      updateProfileStatus: Formz.validate(
          [state.fname, state.lname, state.email, state.password, rePassword]),
    );
  }

  void firstNameChanged(String value) {
    final fname = Name.dirty(value);
    state = state.copyWith(
      fname: fname,
      updateProfileStatus: Formz.validate(
          [fname, state.lname, state.email, state.password, state.rePassword]),
    );
  }

  void lastNameChanged(String value) {
    final lname = Name.dirty(value);
    state = state.copyWith(
      lname: lname,
      updateProfileStatus: Formz.validate(
          [state.fname, lname, state.email, state.password, state.rePassword]),
    );
  }

  void termsAndConditionChangedEvent(bool isTerm) {
    state = state.copyWith(
      isTermAndConditionVal: isTerm,
      updateProfileStatus: Formz.validate([
        state.fname,
        state.lname,
        state.email,
        state.password,
        state.rePassword
      ]),
    );
  }

  void mapEventsToState(AuthEvent authEvent) async {
    authEvent.map(
      changePohone: (PhoneEvent phoneEvent) async {
        final phoneVal = PhoneNumber.dirty(phoneEvent.value ?? '');
        state = state.copyWith(
          phoneNumber: phoneVal,
          countryCode: phoneEvent.countryCode ?? '',
          phoneStatus: Formz.validate([phoneVal]),
        );
      },
      registerPhone: (RegisterPhone registerPhone) async {
        var payload = {
          'countryCode': state.countryCode,
          'phone': state.phoneNumber.value
        };
        state = state.copyWith(phoneStatus: FormzStatus.submissionInProgress);

        final resp = await phoneOnobardingUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionSuccess,
              registerModel: r,
              userPhoneOnboardingModel: r.data?.user);

          secureStore.setString(PrefKeys.USER_DATA,
              json.encode(state.userPhoneOnboardingModel?.toJson()));
          secureStore.setString(PrefKeys.USER_PHONE, state.phoneNumber.value);
          secureStore.setString(
              PrefKeys.AUTH_TOKEN, state.registerModel?.data?.token);

          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      login: (LoginEvent value) async {
        Either<AppError, RegisterModel>? resp;
        switch (state.loginType) {
          case LoginType.phone:
            var payload = {
              'countryCode': state.countryCode,
              'phone': state.phoneNumber.value
            };
            resp = await loginUsecase(payload);
            break;

          case LoginType.email:
            break;
          default:
            null;
        }
        resp?.fold((l) {}, (r) {});
      },
      verifyOrrequestOrResendPhoneOtp:
          (RequestOrResendPhoneOtpEvent requestOrResendPhoneOtpEvent) async {
        state = state.copyWith(
            otpRequestOrResendTypeEnum:
                requestOrResendPhoneOtpEvent.otpRequestOrResendTypeEnum,
            verifyOtpStatus: FormzStatus.submissionInProgress);

        Either<AppError, VerifyOtp>? resp;

        switch (state.otpRequestOrResendTypeEnum) {
          case OtpRequestOrResendType.request:
            resp = await userLoginRequestOtpUsecase(MajorPayload(
                countryCode: state.countryCode,
                phone: state.phoneNumber.value));
            break;

          case OtpRequestOrResendType.resend:
            resp = await resendOtpUsecase(
                MajorPayload(userId: state.userPhoneOnboardingModel?.id));
            break;

          case OtpRequestOrResendType.verifyOtp:
            resp = await verifyOtpUsecase(MajorPayload(
                otp: state.otpVal.value,
                userId: state.userPhoneOnboardingModel?.id));
            break;

          default:
            null;
        }
        resp?.fold((l) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionSuccess,
              verifyOtpModel: r);
        });
      },
      updateUserProfile: (UpdateUserProfileEvent updateUserProfileEvent) async {
        state = state.copyWith(
            updateProfileStatus: FormzStatus.submissionInProgress);

        final resp = await updateUserProfileUsecase(MajorPayload());

        resp.fold((l) {
          state = state.copyWith(
              updateProfileStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              updateProfileStatus: FormzStatus.submissionSuccess,
              updatedUserDetails: r,
              userPhoneOnboardingModel: r.data?.user);
          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      updateUserType: (UpdateUserTypeEvent updateUserTypeEvent) async {
        state = state.copyWith(
            updateUserTypeStatus: FormzStatus.submissionInProgress);
        Map<String, dynamic>? payload;

        switch (state.userTypeEnum) {
          case UserType.vendorType:
            payload = {'userType': 'Vendor/SMB'};
            break;
          case UserType.LogisticsPartner:
            payload = {'userType': UserType.LogisticsPartner.name};
            break;
          default:
            null;
        }

        final resp = await updateUserTypeUsecase(payload!);

        resp.fold((l) {
          state = state.copyWith(
              updateUserTypeStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              updateUserTypeStatus: FormzStatus.submissionSuccess,
              updatedUserDetails: r,
              userPhoneOnboardingModel: r.data?.user);
          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      createOrUpdateLogisticPatner: (CreateOrUpdateLogisticPatnerEvent
          createOrUpdateLogisticPatnerEvent) {},
      createOrUpdateVendor: (CreateOrUpdateVendorEvent value) {},
      initiateForgotPassword:
          (InitiateForgotPasswordEvent initiateForgotPasswordEvent) async {
        var payload = {'email': state.email.value};
        state = state.copyWith(
            InitiateforgotPasswordSatus: FormzStatus.submissionInProgress);

        final resp = await initiateResetPasswordUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              InitiateforgotPasswordSatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              InitiateforgotPasswordSatus: FormzStatus.submissionSuccess,
              registerModel: r,
              userPhoneOnboardingModel: r.data?.user);
          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      verifyResetTokenToCompleteForgotPassword:
          (VerifyResetTokenToCompleteForgotPasswordEvent
              verifyResetTokenToCompleteForgotPasswordEvent) async {
        var payload = {'resetOTP': state.otpVal.value};
        state =
            state.copyWith(verifyOtpStatus: FormzStatus.submissionInProgress);

        final resp = await verifyResetPasswordUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionSuccess,
              verifyResetTokenModel: r);
          log('verifyResetTokenModel : ${state.verifyResetTokenModel}');
        });
      },
      forgotPassword:
          (CompleteForgotPasswordEvent completeForgotPasswordEvent) async {
        var payload = {
          'email': state.email.value,
          'password': state.password.value
        };
        state = state.copyWith(
            forgotPasswordSatus: FormzStatus.submissionInProgress);

        final resp = await resetPasswordUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              forgotPasswordSatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              forgotPasswordSatus: FormzStatus.submissionSuccess,
              registerModel: r);
          log('registerModel : ${state.registerModel}');
        });
      },
    );
  }
}
