import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trackbudi_mobile/src/config/db/m.dart';
import 'package:trackbudi_mobile/src/config/service/api/app_error.dart';
import 'package:trackbudi_mobile/src/core/usecase.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_logistic_partner_resp_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_vendor_response_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_reset_token_model.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/repositories/auth_r.dart';

@lazySingleton
class PhoneOnobardingUsecase extends UseCase<RegisterModel, Map> {
  final AuthRepository authRepository;

  PhoneOnobardingUsecase(this.authRepository);

  @override
  Future<Either<AppError, RegisterModel>> call(params) async {
    return await authRepository.phoneOnobarding(payload: params);
  }
}

@lazySingleton
class VerifyOtpUsecase extends UseCase<VerifyOtp, MajorPayload> {
  final AuthRepository authRepository;

  VerifyOtpUsecase(this.authRepository);

  @override
  Future<Either<AppError, VerifyOtp>> call(MajorPayload params) async {
    return await authRepository.verifyOtp(
        otp: params.otp, userId: params.userId);
  }
}

@lazySingleton
class LoginUsecase extends UseCase<RegisterModel, Map> {
  final AuthRepository authRepository;

  LoginUsecase(this.authRepository);

  @override
  Future<Either<AppError, RegisterModel>> call(params) async {
    return await authRepository.login(params: params);
  }
}

@lazySingleton
class UpdateUserProfileUsecase
    extends UseCase<UpdateUserDetails, MajorPayload> {
  final AuthRepository authRepository;

  UpdateUserProfileUsecase(this.authRepository);

  @override
  Future<Either<AppError, UpdateUserDetails>> call(params) async {
    return await authRepository.updateUserProfile(
        email: params.email,
        firstName: params.firstName,
        lastName: params.lastName,
        password: params.password,
        userId: params.userId);
  }
}

@lazySingleton
class UpdateUserTypeUsecase extends UseCase<UpdateUserDetails, Map> {
  final AuthRepository authRepository;

  UpdateUserTypeUsecase(this.authRepository);

  @override
  Future<Either<AppError, UpdateUserDetails>> call(params) async {
    return await authRepository.updateUserType(payload: params);
  }
}

@lazySingleton
class CreateVendorUsecase extends UseCase<CreateVendorResponseModel, Map> {
  final AuthRepository authRepository;

  CreateVendorUsecase(this.authRepository);

  @override
  Future<Either<AppError, CreateVendorResponseModel>> call(params) async {
    return await authRepository.createVendor(payload: params);
  }
}

@lazySingleton
class CreatelogisticPartnerUsecase
    extends UseCase<CreateLogisticPartnerRespModel, Map> {
  final AuthRepository authRepository;

  CreatelogisticPartnerUsecase(this.authRepository);

  @override
  Future<Either<AppError, CreateLogisticPartnerRespModel>> call(params) async {
    return await authRepository.createlogisticPartner(payload: params);
  }
}

@lazySingleton
class UpdateVendorUsecase extends UseCase<CreateVendorResponseModel, Map> {
  final AuthRepository authRepository;

  UpdateVendorUsecase(this.authRepository);

  @override
  Future<Either<AppError, CreateVendorResponseModel>> call(params) async {
    return await authRepository.updateVendor(payload: params);
  }
}

@lazySingleton
class UpdatelogisticPartnerUsecase
    extends UseCase<CreateLogisticPartnerRespModel, Map> {
  final AuthRepository authRepository;

  UpdatelogisticPartnerUsecase(this.authRepository);

  @override
  Future<Either<AppError, CreateLogisticPartnerRespModel>> call(params) async {
    return await authRepository.updatelogisticPartner(payload: params);
  }
}

@lazySingleton
class UserLoginRequestOtpUsecase extends UseCase<VerifyOtp, MajorPayload> {
  final AuthRepository authRepository;

  UserLoginRequestOtpUsecase(this.authRepository);

  @override
  Future<Either<AppError, VerifyOtp>> call(params) async {
    return await authRepository.userLoginRequestOtp(
        countryCode: params.countryCode, phone: params.phone);
  }
}

@lazySingleton
class UserLoginVerifyOtpUsecase extends UseCase<VerifyOtp, MajorPayload> {
  final AuthRepository authRepository;

  UserLoginVerifyOtpUsecase(this.authRepository);

  @override
  Future<Either<AppError, VerifyOtp>> call(params) async {
    return await authRepository.userLoginVerifyOtp(
        otp: params.otp, phone: params.phone);
  }
}

@lazySingleton
class InitiateResetPasswordUsecase extends UseCase<RegisterModel, Map> {
  final AuthRepository authRepository;

  InitiateResetPasswordUsecase(this.authRepository);

  @override
  Future<Either<AppError, RegisterModel>> call(params) async {
    return await authRepository.initiateResetPassword(params: params);
  }
}

@lazySingleton
class VerifyResetPasswordUsecase extends UseCase<VerifyResetTokenModel, Map> {
  final AuthRepository authRepository;

  VerifyResetPasswordUsecase(this.authRepository);

  @override
  Future<Either<AppError, VerifyResetTokenModel>> call(params) async {
    return await authRepository.verifyResetPassword(params);
  }
}

@lazySingleton
class ResetPasswordUsecase extends UseCase<RegisterModel, Map> {
  final AuthRepository authRepository;

  ResetPasswordUsecase(this.authRepository);

  @override
  Future<Either<AppError, RegisterModel>> call(params) async {
    return await authRepository.resetPassword(params: params);
  }
}
