import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trackbudi_mobile/src/config/service/api/exception.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_reset_token_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_vendor_response_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_logistic_partner_resp_model.dart';
import 'package:trackbudi_mobile/src/config/service/api/app_error.dart';
import 'package:trackbudi_mobile/src/features/auth/data/source/auth_s.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/repositories/auth_r.dart';

@Named('authRepositoryImpl')
@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthService authService;

  AuthRepositoryImpl(@Named('authSource') this.authService);

  @override
  Future<Either<AppError, CreateVendorResponseModel>> createVendor(
      {payload}) async {
    try {
      final dataResp = await authService.createVendor(payload);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, CreateLogisticPartnerRespModel>>
      createlogisticPartner({payload}) async {
    try {
      final dataResp = await authService.createlogisticPartner(payload);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, RegisterModel>> initiateResetPassword(
      {params}) async {
    try {
      final dataResp = await authService.initiateResetPassword(params);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, RegisterModel>> login({params}) async {
    try {
      final dataResp = await authService.login(params);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, RegisterModel>> phoneOnobarding({payload}) async {
    try {
      final dataResp = await authService.phoneOnobarding(payload);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, VerifyOtp>> resendOtp({userId}) async {
    try {
      final dataResp = await authService.resendOtp(userId);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, RegisterModel>> resetPassword({params}) async {
    try {
      final dataResp = await authService.resetPassword(params);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, UpdateUserDetails>> updateUserProfile(
      {firstName, lastName, email, password, userId}) async {
    try {
      final dataResp = await authService.updateUserProfile(
          firstName, lastName, email, password, userId);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, UpdateUserDetails>> updateUserType({payload}) async {
    try {
      final dataResp = await authService.updateUserType(payload);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, CreateVendorResponseModel>> updateVendor(
      {payload}) async {
    try {
      final dataResp = await authService.updateVendor(payload);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, CreateLogisticPartnerRespModel>>
      updatelogisticPartner({payload}) async {
    try {
      final dataResp = await authService.updatelogisticPartner(payload);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, VerifyOtp>> userLoginRequestOtp(
      {countryCode, phone}) async {
    try {
      final dataResp =
          await authService.userLoginRequestOtp(countryCode, phone);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, VerifyOtp>> userLoginVerifyOtp({otp, phone}) async {
    try {
      final dataResp = await authService.userLoginVerifyOtp(otp, phone);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, VerifyOtp>> verifyOtp({otp, userId}) async {
    try {
      final dataResp = await authService.verifyOtp(otp, userId);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }

  @override
  Future<Either<AppError, VerifyResetTokenModel>> verifyResetPassword(
      params) async {
    try {
      final dataResp = await authService.verifyResetPassword(params);

      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return Left(AppError(errorMessage));
    }
  }
}
