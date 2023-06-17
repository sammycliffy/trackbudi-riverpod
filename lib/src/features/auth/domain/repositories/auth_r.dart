import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trackbudi_mobile/src/config/service/api/app_error.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_logistic_partner_resp_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_vendor_response_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_reset_token_model.dart';

@factoryMethod
abstract class AuthRepository {
  Future<Either<AppError, RegisterModel>> phoneOnobarding({payload});
  Future<Either<AppError, VerifyOtp>> verifyOtp({otp, userId});
  Future<Either<AppError, VerifyOtp>> resendOtp({userId});
  Future<Either<AppError, UpdateUserDetails>> updateUserProfile(
      {firstName, lastName, email, password, userId});
  Future<Either<AppError, UpdateUserDetails>> updateUserType({payload});
  Future<Either<AppError, CreateVendorResponseModel>> createVendor({payload});
  Future<Either<AppError, CreateLogisticPartnerRespModel>>
      createlogisticPartner({payload});
  Future<Either<AppError, VerifyOtp>> userLoginRequestOtp({countryCode, phone});
  Future<Either<AppError, VerifyOtp>> userLoginVerifyOtp({otp, phone});
  Future<Either<AppError, RegisterModel>> login({params});
  Future<Either<AppError, RegisterModel>> initiateResetPassword({params});
  Future<Either<AppError, VerifyResetTokenModel>> verifyResetPassword(params);
  Future<Either<AppError, RegisterModel>> resetPassword({params});

  Future<Either<AppError, CreateVendorResponseModel>> updateVendor({payload});
  Future<Either<AppError, CreateLogisticPartnerRespModel>>
      updatelogisticPartner({payload});
}
