import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
import 'package:trackbudi_mobile/src/core/mixin/input_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_reval.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_logistic_partner_resp_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_vendor_response_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_reset_token_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(Name.pure()) Name otpVal,
    @Default(Name.pure()) Name fname,
    @Default(Name.pure()) Name lname,
    TextEditingController? pinController,
    @Default('') String exceptionError,
    @Default('') String countryCode,
    @Default(false) bool isTermAndConditionVal,
    @Default(FormzStatus.pure) FormzStatus loginStatus,
    @Default(FormzStatus.pure) FormzStatus phoneStatus,
    @Default(FormzStatus.pure) FormzStatus verifyOtpStatus,
    @Default(FormzStatus.pure) FormzStatus InitiateforgotPasswordSatus,
    @Default(FormzStatus.pure) FormzStatus forgotPasswordSatus,
    @Default(FormzStatus.pure) FormzStatus updateUserTypeStatus,
    @Default(FormzStatus.pure) FormzStatus completeOnboardingStatus,
    @Default(FormzStatus.pure) FormzStatus updateProfileStatus,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password oldPassword,
    @Default(RePassword.pure()) RePassword rePassword,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    RegisterModel? registerModel,
    UpdateUserDetails? updatedUserDetails,
    UserData? userPhoneOnboardingModel,
    VerifyOtp? verifyOtpModel,
    VerifyResetTokenModel? verifyResetTokenModel,
    CreateLogisticPartnerRespModel? createLogisticPartnerRespModel,
    CreateVendorResponseModel? createVendorResponseModel,
    LoginType? loginType,
    OtpRequestOrResendType? otpRequestOrResendTypeEnum,
    UserType? userTypeEnum,
  }) = _AuthState;

  const AuthState._();
  bool get isPasswordsMatch => password.value == rePassword.value;
  bool get displaySignUpButton => phoneStatus.isValidated;
  bool get displayVerifyOtpButton => verifyOtpStatus.isValidated;
  bool get displayUpdateProfileButton =>
      updateProfileStatus.isValidated &&
      isTermAndConditionVal == true &&
      isPasswordsMatch;
}