import 'package:trackbudi_mobile/src/features/auth/data/model/create_logistic_partner_resp_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_vendor_response_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_reset_token_model.dart';

abstract class AuthService {
  Future<RegisterModel> phoneOnobarding(payload);
  Future<VerifyOtp> verifyOtp(otp, userId);
  Future<VerifyOtp> resendOtp(userId);
  Future<UpdateUserDetails> updateUserProfile(
      firstName, lastName, email, password, userId);
  Future<UpdateUserDetails> updateUserType(payload);
  Future<CreateVendorResponseModel> createVendor(payload);
  Future<CreateLogisticPartnerRespModel> createlogisticPartner(payload);
  Future<VerifyOtp> userLoginRequestOtp(countryCode, phone);
  Future<VerifyOtp> userLoginVerifyOtp(otp, phone);
  Future<RegisterModel> login(Map params);
  Future<RegisterModel> initiateResetPassword(Map params);
  Future<VerifyResetTokenModel> verifyResetPassword(Map params);
  Future<RegisterModel> resetPassword(Map params);

  Future<CreateVendorResponseModel> updateVendor(payload);
  Future<CreateLogisticPartnerRespModel> updatelogisticPartner(payload);
}
