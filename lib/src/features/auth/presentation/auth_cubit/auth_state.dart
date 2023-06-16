part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(FormzStatus.pure) FormzStatus loginStatus,
    @Default(FormzStatus.pure) FormzStatus phoneStatus,
    @Default(FormzStatus.pure) FormzStatus completeOnboardingStatus,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password oldPassword,
    @Default(RePassword.pure()) RePassword rePassword,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
  }) = _Initial;
}
