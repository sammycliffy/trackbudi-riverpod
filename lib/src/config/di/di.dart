import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trackbudi_mobile/src/config/db/secure_storage.dart';
import 'package:trackbudi_mobile/src/config/service/api/k_api.dart';
import 'package:trackbudi_mobile/src/config/service/navigation_service/nav_service.dart';
import 'package:trackbudi_mobile/src/features/auth/data/source/auth_source.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/repositories/auth_impl.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/usecases/auth_u.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => Dio();

  //---
  @lazySingleton
  Api get apiService => Api();

  //---
  @lazySingleton
  SecureStore get secureStore => SecureStore();

  @lazySingleton
  NavigationService get navigationService => NavigationService();

  ///------auth--------
  @lazySingleton
  AuthSource get authSource => AuthSource(api: apiService);

  @lazySingleton
  AuthRepositoryImpl get authRepository => AuthRepositoryImpl(authSource);

  @lazySingleton
  PhoneOnobardingUsecase get phoneOnobardingUsecase =>
      PhoneOnobardingUsecase(authRepository);

  @lazySingleton
  VerifyOtpUsecase get verifyOtpUsecase => VerifyOtpUsecase(authRepository);

  @lazySingleton
  ResendOtpUsecase get resendOtpUsecase => ResendOtpUsecase(authRepository);

  @lazySingleton
  LoginUsecase get loginUsecase => LoginUsecase(authRepository);

  @lazySingleton
  UpdateUserProfileUsecase get updateUserProfileUsecase =>
      UpdateUserProfileUsecase(authRepository);

  @lazySingleton
  UpdateUserTypeUsecase get updateUserTypeUsecase =>
      UpdateUserTypeUsecase(authRepository);

  @lazySingleton
  CreateVendorUsecase get createVendorUsecase =>
      CreateVendorUsecase(authRepository);

  @lazySingleton
  CreatelogisticPartnerUsecase get createlogisticPartnerUsecase =>
      CreatelogisticPartnerUsecase(authRepository);

  @lazySingleton
  UpdateVendorUsecase get updateVendorUsecase =>
      UpdateVendorUsecase(authRepository);

  @lazySingleton
  UpdatelogisticPartnerUsecase get updatelogisticPartnerUsecase =>
      UpdatelogisticPartnerUsecase(authRepository);

  @lazySingleton
  UserLoginRequestOtpUsecase get userLoginRequestOtpUsecase =>
      UserLoginRequestOtpUsecase(authRepository);

  @lazySingleton
  UserLoginVerifyOtpUsecase get userLoginVerifyOtpUsecase =>
      UserLoginVerifyOtpUsecase(authRepository);

  @lazySingleton
  InitiateResetPasswordUsecase get initiateResetPasswordUsecase =>
      InitiateResetPasswordUsecase(authRepository);

  @lazySingleton
  VerifyResetPasswordUsecase get verifyResetPasswordUsecase =>
      VerifyResetPasswordUsecase(authRepository);

  @lazySingleton
  ResetPasswordUsecase get resetPasswordUsecase =>
      ResetPasswordUsecase(authRepository);
}
