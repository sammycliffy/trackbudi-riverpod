// ignore_for_file: constant_identifier_names

import 'package:formz/formz.dart';

enum RePasswordValidationError { invalid, Required, mismatch, Short }

class RePassword extends FormzInput<String, RePasswordValidationError> {
  const RePassword.pure() : super.pure('');
  const RePassword.dirty([String value = '']) : super.dirty(value);

  static final _rePasswordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  @override
  RePasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return RePasswordValidationError.Required;
    } else if (value.length < 8) {
      return RePasswordValidationError.Short;
    }
    return !_rePasswordRegExp.hasMatch(value) && value.length < 10
        ? RePasswordValidationError.invalid
        : null;
  }
}

extension Explanation on RePasswordValidationError {
  String? get name {
    switch (this) {
      case RePasswordValidationError.invalid:
        return 'Invalid condition';
      default:
        return null;
    }
  }
}
