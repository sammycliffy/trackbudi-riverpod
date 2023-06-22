import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/arithmetic_txt_wid.dart';

vehicleComponent(
        {final bool? isSelected = false,
        final Function()? increaseValue,
        Function()? decreaseValue,
        Function()? uncheck,
        String? label,
        quantity}) =>
    GestureDetector(
      onTap: uncheck,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 7.5.h,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.textformGrey),
            borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          isSelected == true
              ? Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primary),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1),
                      child: Icon(
                        Icons.check,
                        color: AppColors.white,
                        size: 13,
                      ),
                    ),
                  ),
                )
              : Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.textformGrey)),
                ),
          widthSpace(3),
          Expanded(
            child: customText(
                text: label ?? '',
                fontSize: 11,
                textColor: AppColors.textPrimary),
          ),
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: arithmeticContainer('-'),
                  onTap: decreaseValue,
                ),
                customText(
                    text: quantity ?? '',
                    fontSize: 11,
                    textColor: AppColors.textPrimary),
                GestureDetector(
                  onTap: increaseValue,
                  child: arithmeticContainer('+'),
                )
              ],
            ),
          )
        ]),
      ),
    );
