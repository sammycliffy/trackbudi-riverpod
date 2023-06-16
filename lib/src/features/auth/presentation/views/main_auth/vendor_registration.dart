import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../widgets/app_app_bar.dart';
import '../../widgets/app_country_widget.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/app_dropdown.dart';
import '../../widgets/app_textformfield.dart';
import '../../widgets/trackbudi_button.dart';

class VendorRegistration extends StatefulWidget {
  const VendorRegistration({super.key});

  @override
  State<VendorRegistration> createState() => _VendorRegistrationState();
}

class _VendorRegistrationState extends State<VendorRegistration> {
  List<String> deliveriesPerMonth = [
    '0 - 100',
    '100 - 1000',
    '1000 - 10000',
    '10000',
    'Just getting started'
  ];

  List<String> category = [
    'Category A',
    'Category B',
    'Category C',
    'Category D',
  ];

  arithmeticContainer(String symbol) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.textGrey),
          shape: BoxShape.circle,
          color: AppColors.white),
      child: Center(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 1), child: Text(symbol)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
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
              const TrackBudiTextFormField(
                label: 'Business name',
              ),
              heightSpace(2),
              TrackBudiDropdown(
                dropdownList: category,
                label: 'Category',
                onChange: (val) => log(val.toString()),
              ),
              heightSpace(2),
              customText(
                  text: 'Select country',
                  fontSize: 14,
                  textColor: AppColors.textPrimary),
              heightSpace(2),
              CountryWidget(selectCountry: (val) => log(val.toString())),
              heightSpace(2),
              customText(
                  text: 'Pickup Address',
                  fontSize: 14,
                  textColor: AppColors.textPrimary),
              heightSpace(2),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.textformGrey)),
                child: Column(children: [
                  SizedBox(
                    height: 54,
                    child: TextFormField(
                      // keyboardType: widget.keyboardType,
                      // controller: widget.textEditingController,

                      decoration: InputDecoration(
                          // suffixIcon: showPasswordIcon(widget.isPassword),
                          hintText: 'e.g no 8 example street',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: AppColors.textformGrey)),
                              child: const Icon(
                                Icons.location_on_outlined,
                                color: AppColors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          enabledBorder: AppColors.normalBorder,
                          errorBorder: AppColors.errorBorder,
                          focusedBorder: AppColors.normalBorder,
                          focusedErrorBorder: AppColors.normalBorder),
                    ),
                  ),
                  heightSpace(2),
                  const TrackBudiTextFormField(
                    label: 'Landmark',
                  ),
                  heightSpace(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bodyText(text: 'Add another pickup address'),
                      GestureDetector(
                        // onTap: ,
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
                onTap: () => context.router.push(const SettingUp()),
              ),
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
    );
  }

  void onchange(value) {
    log(value.toString());
  }
}
