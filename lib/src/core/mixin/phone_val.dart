import 'package:formz/formz.dart';

enum PhoneNumberValidator { invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidator> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nigerianNumberFull =
      RegExp(r'^(234|0)(7|8|9)(0|1)\d{8}$');
  static final RegExp numberRegExp = RegExp(r'^\d+$');

  @override
  PhoneNumberValidator? validator(String? value,
      [bool allowEmpty = false, bool restrictToNigeria = true]) {
    value = value!.replaceAll(' ', '');
    if (value.isEmpty) {
      return null;
    }
    return _nigerianNumberFull.hasMatch(value) && numberRegExp.hasMatch(value)
        ? null
        : PhoneNumberValidator.invalid;
  }
}
