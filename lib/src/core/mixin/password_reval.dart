// ignore_for_file: constant_identifier_names

import 'package:formz/formz.dart';

enum RePasswordValidationError { invalid, Required, mismatch }

class RePassword extends FormzInput<String, RePasswordValidationError> {
  const RePassword.pure() : super.pure('');
  const RePassword.dirty([String value = '']) : super.dirty(value);

  static final _rePasswordRegExp =
      RegExp(r'^(?=.{8,32}$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*');

  @override
  RePasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return RePasswordValidationError.Required;
    }
    return _rePasswordRegExp.hasMatch(value) && value.length < 10
        ? null
        : RePasswordValidationError.invalid;
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
