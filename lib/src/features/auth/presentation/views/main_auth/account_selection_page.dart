import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_app_bar.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

class AccountSelection extends HookConsumerWidget {
  const AccountSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLogistics = useState<bool>(false);
    final isVendor = useState<bool>(false);
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            heightSpace(2),
            Center(child: SvgPicture.asset(AppImages.cardImage)),
            heightSpace(2),
            customText(
                text: 'What type of user are you?',
                fontSize: 18,
                textColor: AppColors.textPrimary),
            heightSpace(1),
            bodyText(text: 'We want to know more about you'),
            heightSpace(3),
            GestureDetector(
              onTap: () {
                isLogistics.value = true;
                isVendor.value = false;
              },
              child: _accountSelectionContainer(
                  'Logistics partner',
                  'I have a fleet of riders/drivers',
                  isLogistics.value,
                  context),
            ),
            heightSpace(3),
            GestureDetector(
              child: _accountSelectionContainer('Vendor / SMB',
                  'I have an e-commerce business', isVendor.value, context),
              onTap: () {
                isLogistics.value = false;
                isVendor.value = true;
              },
            ),
            heightSpace(4),
            TrackBudiButton(
              buttonText: 'Continue',
              onTap: () {
                if (isLogistics.value) {
                  context.pushRoute(const CompanyRegistration());
                  return;
                }
                context.pushRoute(const VendorRegistration());
              },
            )
          ],
        ),
      )),
    );
  }

  _accountSelectionContainer(
          String title, String subtitle, bool isSelected, context) =>
      Container(
        width: double.infinity,
        height: 13.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.textformGrey)),
        child: Row(children: [
          isSelected
              ? Container(
                  margin: const EdgeInsets.all(11),
                  padding: const EdgeInsets.all(10),
                  width: 14.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(AppImages.activeProfile),
                )
              : Container(
                  margin: const EdgeInsets.all(11),
                  padding: const EdgeInsets.all(10),
                  width: 14.w,
                  height: 7.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(AppImages.inactiveProfile),
                ),
          Padding(
            padding: const EdgeInsets.only(top: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: title,
                    fontSize: 14,
                    textColor: AppColors.textPrimary),
                heightSpace(0.6),
                bodyText(text: subtitle)
              ],
            ),
          ),
          widthSpace(4),
          isSelected
              ? Container(
                  width: 5.h,
                  height: 5.h,
                  decoration: const BoxDecoration(
                      color: AppColors.primary, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.check,
                    color: AppColors.white,
                  ),
                )
              : Container(
                  width: 5.h,
                  height: 5.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.textformGrey)),
                )
        ]),
      );
}

enum State { logistics, vendors }
