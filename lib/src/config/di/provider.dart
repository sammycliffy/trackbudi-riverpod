import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trackbudi_mobile/src/config/di/injector.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/onboard/auth_notifier.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/onboard/auth_state.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/usecases/auth_u.dart';

final authNotifier = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
        verifyResetPasswordUsecase: si<VerifyResetPasswordUsecase>(),
        updateUserProfileUsecase: si<UpdateUserProfileUsecase>(),
        updateUserTypeUsecase: si<UpdateUserTypeUsecase>(),
        updateVendorUsecase: si<UpdateVendorUsecase>(),
        updatelogisticPartnerUsecase: si<UpdatelogisticPartnerUsecase>(),
        userLoginRequestOtpUsecase: si<UserLoginRequestOtpUsecase>(),
        userLoginVerifyOtpUsecase: si<UserLoginVerifyOtpUsecase>(),
        verifyOtpUsecase: si<VerifyOtpUsecase>(),
        phoneOnobardingUsecase: si<PhoneOnobardingUsecase>(),
        resendOtpUsecase: si<ResendOtpUsecase>(),
        resetPasswordUsecase: si<ResetPasswordUsecase>(),
        loginUsecase: si<LoginUsecase>(),
        createVendorUsecase: si<CreateVendorUsecase>(),
        createlogisticPartnerUsecase: si<CreatelogisticPartnerUsecase>(),
        initiateResetPasswordUsecase: si<InitiateResetPasswordUsecase>()),
);
