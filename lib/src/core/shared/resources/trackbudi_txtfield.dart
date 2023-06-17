import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';

class TrackBudiPhoneField extends StatelessWidget {
  const TrackBudiPhoneField({
    super.key,
    this.validator,
    this.onChanged,
  });
  final FutureOr<String?> Function(PhoneNumber?)? validator;
  final Function(PhoneNumber)? onChanged;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      disableLengthCheck: false,
      validator: validator,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: 'Phone Number',
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
