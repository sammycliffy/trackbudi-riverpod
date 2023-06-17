import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackbudi_mobile/src/core/mixin/input_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_reval.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default('') String exceptionError,
    @Default(FormzStatus.pure) FormzStatus loginStatus,
    @Default(FormzStatus.pure) FormzStatus phoneStatus,
    @Default(FormzStatus.pure) FormzStatus completeOnboardingStatus,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password oldPassword,
    @Default(RePassword.pure()) RePassword rePassword,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    RegisterModel? registerModel,
  }) = _AuthState;

  const AuthState._();

  bool get displaySignUpButton => phoneStatus.isValidated;
}
