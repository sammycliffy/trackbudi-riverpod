import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackbudi_mobile/src/core/mixin/input_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_reval.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      completeOnboardingStatus: Formz.validate(
          [password, state.email, state.rePassword, state.phoneNumber]),
    ));
  }

  void rePasswordChanged(String value) {
    final rePassword = RePassword.dirty(value);
    emit(state.copyWith(
      rePassword: rePassword,
      completeOnboardingStatus: Formz.validate(
          [rePassword, state.email, state.password, state.phoneNumber]),
    ));
  }

  void phoneNumberChnaged(String value) {
    final phone = PhoneNumber.dirty(value);
    emit(state.copyWith(
      phoneNumber: phone,
      completeOnboardingStatus: Formz.validate([phone]),
    ));
  }
}
