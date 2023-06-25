// ignore_for_file: constant_identifier_names

import 'package:formz/formz.dart';

enum PhoneNumberValidator { invalid, Required }

class PhoneNumber extends FormzInput<String, PhoneNumberValidator> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nigerianNumberFull = RegExp(
      r'^(?:(?:(?:\+?234(?:\h1)?|01)\h*)?(?:\(\d{3}\)|\d{3})|\d{4})(?:\W*\d{3})?\W*\d{4}(?!\d)');
  static final RegExp numberRegExp = RegExp(r'^\d+$');

  @override
  PhoneNumberValidator? validator(String? value,
      [bool allowEmpty = false, bool restrictToNigeria = true]) {
    value = value!.replaceAll(' ', '');
    if (value.isEmpty) {
      return PhoneNumberValidator.Required;
    }
    return _nigerianNumberFull.hasMatch(value) && numberRegExp.hasMatch(value)
        ? null
        : PhoneNumberValidator.invalid;
  }
}



//((^+)(234){1}[0–9]{10})|((^234)[0–9]{10})|((^0)(7|8|9){1}(0|1){1}[0–9]{8})

//(?:(?:(?:\+?234(?:\h1)?|01)\h*)?(?:\(\d{3}\)|\d{3})|\d{4})(?:\W*\d{3})?\W*\d{4}(?!\d)