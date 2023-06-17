// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/source/auth_s.dart' as _i5;
import '../../features/auth/data/source/auth_source.dart' as _i6;
import '../../features/auth/domain/repositories/auth_impl.dart' as _i4;
import '../../features/auth/domain/repositories/auth_r.dart' as _i11;
import '../../features/auth/domain/usecases/auth_u.dart' as _i7;
import '../db/secure_storage.dart' as _i10;
import '../service/api/k_api.dart' as _i3;
import '../service/navigation_service/nav_service.dart' as _i9;
import 'di.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.Api>(() => appModule.apiService);
  gh.lazySingleton<_i4.AuthRepositoryImpl>(() => appModule.authRepository);
  gh.factory<_i5.AuthService>(
    () => _i6.AuthSource(api: get<_i3.Api>()),
    instanceName: 'authSource',
  );
  gh.lazySingleton<_i6.AuthSource>(() => appModule.authSource);
  gh.lazySingleton<_i7.CreateVendorUsecase>(
      () => appModule.createVendorUsecase);
  gh.lazySingleton<_i7.CreatelogisticPartnerUsecase>(
      () => appModule.createlogisticPartnerUsecase);
  gh.lazySingleton<_i8.Dio>(() => appModule.dio);
  gh.lazySingleton<_i7.InitiateResetPasswordUsecase>(
      () => appModule.initiateResetPasswordUsecase);
  gh.lazySingleton<_i7.LoginUsecase>(() => appModule.loginUsecase);
  gh.lazySingleton<_i9.NavigationService>(() => appModule.navigationService);
  gh.lazySingleton<_i7.PhoneOnobardingUsecase>(
      () => appModule.phoneOnobardingUsecase);
  gh.lazySingleton<_i7.ResendOtpUsecase>(() => appModule.resendOtpUsecase);
  gh.lazySingleton<_i7.ResetPasswordUsecase>(
      () => appModule.resetPasswordUsecase);
  gh.lazySingleton<_i10.SecureStore>(() => appModule.secureStore);
  gh.lazySingleton<_i7.UpdateUserProfileUsecase>(
      () => appModule.updateUserProfileUsecase);
  gh.lazySingleton<_i7.UpdateUserTypeUsecase>(
      () => appModule.updateUserTypeUsecase);
  gh.lazySingleton<_i7.UpdateVendorUsecase>(
      () => appModule.updateVendorUsecase);
  gh.lazySingleton<_i7.UpdatelogisticPartnerUsecase>(
      () => appModule.updatelogisticPartnerUsecase);
  gh.lazySingleton<_i7.UserLoginRequestOtpUsecase>(
      () => appModule.userLoginRequestOtpUsecase);
  gh.lazySingleton<_i7.UserLoginVerifyOtpUsecase>(
      () => appModule.userLoginVerifyOtpUsecase);
  gh.lazySingleton<_i7.VerifyOtpUsecase>(() => appModule.verifyOtpUsecase);
  gh.lazySingleton<_i7.VerifyResetPasswordUsecase>(
      () => appModule.verifyResetPasswordUsecase);
  gh.factory<_i11.AuthRepository>(
    () => _i4.AuthRepositoryImpl(
        get<_i5.AuthService>(instanceName: 'authSource')),
    instanceName: 'authRepositoryImpl',
  );
  return get;
}

class _$AppModule extends _i12.AppModule {}
