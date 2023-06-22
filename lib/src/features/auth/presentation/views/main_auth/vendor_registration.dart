import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/config/router/app_router.gr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/toast_r.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_app_bar.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_country_widget.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_divider.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_dropdown.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/custom_vendor_widget.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';

final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
    GlobalKey<RefreshIndicatorState>();

class VendorRegistration extends HookConsumerWidget {
  const VendorRegistration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // int currenInd;
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.vendorStatus != newState.vendorStatus) {
        if (newState.vendorStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.vendorStatus.isSubmissionSuccess) {
          context.router.replace(SettingUp());
        }
      }
    });
    return Scaffold(
      appBar: appBar(),
      body: RefreshWid(
        refreshIndicatorKey: _refreshIndicatorKey,
        onRefresh: () => ref.read(authNotifier.notifier).getRandyListData(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImages.logisticsHeading,
                      width: 100,
                      height: 100,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                              text: 'Company information',
                              fontSize: 14,
                              textColor: AppColors.textPrimary),
                          heightSpace(1),
                          bodyText(text: 'We want to know more about you')
                        ],
                      ),
                    )
                  ],
                ),
                const AppDivider(),
                heightSpace(6),
                TrackBudiTextFormField(
                  label: 'Business name',
                  onChanged: (value) =>
                      ref.read(authNotifier.notifier).businessName(value),
                ),
                heightSpace(2),
                TrackBudiDropdown(
                    dropdownList: state.categoryList,
                    label: 'Category',
                    onChange: (val) => ref
                        .read(authNotifier.notifier)
                        .selectedCategory(val.toString())),
                heightSpace(2),
                customText(
                    text: 'Select country',
                    fontSize: 11,
                    textColor: AppColors.textPrimary),
                heightSpace(2),
                CountryWidget(
                    selectCountry: (val) => ref
                        .read(authNotifier.notifier)
                        .selectedVendorCountry(val.toString())),
                heightSpace(2),
                customText(
                    text: 'Pickup Address',
                    fontSize: 11,
                    textColor: AppColors.textPrimary),
                heightSpace(2),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.textformGrey)),
                  child: Column(children: [
                    Column(
                      children: state.widgetList
                          .asMap()
                          .entries
                          .map((e) => CustomVendorPickAddressWidget())
                          .toList(),
                    ),
                    heightSpace(2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        bodyText(text: 'Add another pickup address'),
                        GestureDetector(
                          onTap: () => ref
                              .read(authNotifier.notifier)
                              .addMapToList(state.widgetList,
                                  CustomVendorPickAddressWidget()),
                          child: Container(
                              padding: const EdgeInsets.only(bottom: 2),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, border: Border.all()),
                              child: Center(
                                child: customText(
                                    text: '+',
                                    fontSize: 17,
                                    textColor: AppColors.black),
                              )),
                        )
                      ],
                    )
                  ]),
                ),
                // TrackBudiDropdown(
                //   dropdownList: category,
                //   label: 'How did you hear about us',
                //   onChange: onchange,
                // ),
                // heightSpace(2),
                // const TrackBudiTextFormField(
                //   label: 'Enter referral code (Optional)',
                // ),
                heightSpace(3),
                TrackBudiButton(
                    buttonText: 'I accept',
                    disable: !state.displayvendorButton,
                    isLoading: state.vendorStatus.isSubmissionInProgress,
                    onTap: state.displayvendorButton
                        ? () {
                            ref
                                .read(authNotifier.notifier)
                                .mapEventsToState(CreateOrUpdateVendorEvent());
                          }
                        : () {}),
                heightSpace(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bodyText(text: 'Already have an account?'),
                    widthSpace(2),
                    customText(
                        text: 'Login',
                        fontSize: 14,
                        textColor: AppColors.textPrimary),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onchange(value) {
    log(value.toString());
  }
}
