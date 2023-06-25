import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';

class TrackBudiPhoneField extends StatelessWidget {
  const TrackBudiPhoneField({
    super.key,
    this.validator,
    this.enabled = true,
    this.onChanged,
  });
  final FutureOr<String?> Function(PhoneNumber?)? validator;
  final Function(PhoneNumber)? onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      cursorColor: AppColors.lightPrimary,
      cursorWidth: 0.9,
      disableLengthCheck: false,
      style: TextStyle(
          fontFamily: 'Euclad', fontSize: 12, fontWeight: FontWeight.w400),
      validator: validator,
      dropdownTextStyle: TextStyle(fontFamily: 'Euclad', fontSize: 11),
      pickerDialogStyle: PickerDialogStyle(
          countryNameStyle: TextStyle(fontFamily: 'Euclad', fontSize: 11),
          countryCodeStyle: TextStyle(fontFamily: 'Euclad', fontSize: 11)),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: 'Phone Number',
        helperStyle: TextStyle(fontSize: 11),
        errorStyle: TextStyle(fontSize: 9),
        labelStyle: TextStyle(fontSize: 11),
        suffixStyle: TextStyle(fontSize: 11, fontFamily: 'Euclad'),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textformGrey),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textformGrey),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        counter: SizedBox.shrink(),
        border: OutlineInputBorder(),
      ),
      initialCountryCode: 'NG',
      onChanged: onChanged,
    );
  }
}
