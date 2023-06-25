// ignore_for_file: constant_identifier_names

import 'package:formz/formz.dart';

enum PasswordValidationError {
  invalid,
  Required,
  Short,
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  @override
  PasswordValidationError? validator(String value, [bool allowEmpty = false]) {
    if (value.isEmpty) {
      return PasswordValidationError.Required;
    } else if (value.length < 8) {
      return PasswordValidationError.Short;
    }
    return !_passwordRegExp.hasMatch(value) && value.length < 10
        ? PasswordValidationError.invalid
        : null;
  }
}

extension Explanation on PasswordValidationError {
  String? get name {
    switch (this) {
      case PasswordValidationError.invalid:
        return 'Invalid condition';
      case PasswordValidationError.Short:
        return 'Password is short';
      default:
        return null;
    }
  }
}
