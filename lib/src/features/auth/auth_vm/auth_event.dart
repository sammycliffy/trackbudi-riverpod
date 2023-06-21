import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.changePohone(
      {required String? value, String? countryCode}) = PhoneEvent;
  const factory AuthEvent.verifyOrrequestOrResendPhoneOtp(
          {required OtpRequestOrResendType? otpRequestOrResendTypeEnum}) =
      RequestOrResendPhoneOtpEvent;
  const factory AuthEvent.updateUserProfile() = UpdateUserProfileEvent;
  const factory AuthEvent.updateUserType({required UserType? userType}) =
      UpdateUserTypeEvent;
  const factory AuthEvent.registerPhone() = RegisterPhone;
  const factory AuthEvent.createOrUpdateVendor() = CreateOrUpdateVendorEvent;
  const factory AuthEvent.createOrUpdateLogisticPatner() =
      CreateOrUpdateLogisticPatnerEvent;
  const factory AuthEvent.login({required LoginType? loginType}) = LoginEvent;
  const factory AuthEvent.initiateForgotPassword() =
      InitiateForgotPasswordEvent;

  const factory AuthEvent.verifyResetTokenToCompleteForgotPassword() =
      VerifyResetTokenToCompleteForgotPasswordEvent;

  const factory AuthEvent.forgotPassword() = CompleteForgotPasswordEvent;
}
