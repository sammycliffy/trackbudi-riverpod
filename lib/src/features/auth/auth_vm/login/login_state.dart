import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
import 'package:trackbudi_mobile/src/core/mixin/input_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(Name.pure()) Name otpVal,
    @Default('') String exceptionError,
    @Default('') String countryCode,
    @Default(FormzStatus.pure) FormzStatus loginStatus,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    RegisterModel? registerModel,
    UserData? userPhoneOnboardingModel,
    LoginType? loginType,
    OtpRequestOrResendType? otpRequestOrResendTypeEnum,
    UserType? userTypeEnum,
  }) = _LoginState;

  const LoginState._();

  bool get displayLoginButton => loginStatus.isValidated;
}
