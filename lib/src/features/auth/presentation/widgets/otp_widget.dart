// import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
// import 'package:pinput/pinput.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';

class PinView extends StatelessWidget {
  const PinView({
    super.key,
    required this.onChanged,
    this.controller,
  });

  final Function(String) onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 10, right: 15),
    //   child: PinCodeTextField(
    //     enableActiveFill: true,
    //     appContext: context,
    //     length: 4,
    //     onChanged: onChanged,
    //     controller: controller,
    //     keyboardType: TextInputType.number,
    //     pinTheme: PinTheme(
    //         shape: PinCodeFieldShape.box,
    //         borderRadius: BorderRadius.circular(9),
    //         fieldHeight: 57,
    //         fieldWidth: 65,
    //         activeFillColor: Colors.white,
    //         inactiveFillColor: Colors.white,
    //         selectedFillColor: Colors.white,
    //         selectedColor: AppColors.textGrey,
    //         inactiveColor: AppColors.textGrey.withOpacity(.3),
    //         borderWidth: 0.53,
    //         activeColor: AppColors.textGrey),
    //   ),
    // );
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      onChanged: onChanged,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      enableIMEPersonalizedLearning: true,
      animationCurve: Curves.easeIn,
      animationDuration: Duration(milliseconds: 100),
      defaultPinTheme: PinTheme(
          textStyle: const TextStyle(fontSize: 16),
          height: 57,
          width: 65,
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.textGrey.withOpacity(.3)),
              borderRadius: BorderRadius.circular(9))),
      focusedPinTheme: PinTheme(
          height: 57,
          width: 65,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.textGrey),
              borderRadius: BorderRadius.circular(9))),
    );
  }
}
