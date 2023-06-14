import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../../config/router/app_router.gr.dart';
import '../../../../../core/shared/resources/app_images.dart';
import '../../../../../core/shared/resources/app_spacer.dart';
import '../../../../../core/shared/resources/colors_tr.dart';
import '../../../../../core/shared/resources/custom_text.dart';
import '../../../data/model/vehicle_type.dart';
import '../../widgets/app_app_bar.dart';
import '../../widgets/app_divider.dart';
import '../../widgets/app_dropdown.dart';
import '../../widgets/app_textformfield.dart';
import '../../widgets/trackbudi_button.dart';

class CompanyRegistration extends StatefulWidget {
  const CompanyRegistration({super.key});

  @override
  State<CompanyRegistration> createState() => _CompanyRegistrationState();
}

class _CompanyRegistrationState extends State<CompanyRegistration> {
  List<VehicleTypeWidget> vehicleType = [
    VehicleTypeWidget(vehicleType: 'Motor bike', quantity: 3, isChecked: false),
    VehicleTypeWidget(vehicleType: 'Car', quantity: 3, isChecked: false),
    VehicleTypeWidget(vehicleType: 'Truck', quantity: 3, isChecked: false),
  ];

  List<String> deliveriesPerMonth = [
    '0 - 100',
    '100 - 1000',
    '1000 - 10000',
    '10000',
    'Just getting started'
  ];

  List<String> aboutUs = [
    'Word of mouth',
    'Instagram',
    'Twitter',
    'Google Search',
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.signupRoundImage,
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
                label: 'Name of Conpany',
              ),
              heightSpace(2),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.textformGrey),
                    borderRadius: BorderRadius.circular(8)),
                child: InternationalPhoneNumberInput(
                    inputDecoration:
                        const InputDecoration(enabledBorder: InputBorder.none),
                    onInputChanged: (val) {
                      log(val.toString());
                    }),
              ),
              const TrackBudiTextFormField(
                label: 'Last name',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Address',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Landmark',
              ),
              heightSpace(2),
              const TrackBudiTextFormField(
                label: 'Website',
                hintText: 'Optional',
              ),
              heightSpace(3),
              customText(
                  text: 'Vehicle type',
                  fontSize: 14,
                  textColor: AppColors.textPrimary),
              heightSpace(2),
              Column(
                children: vehicleType
                    .asMap()
                    .map((index, element) => MapEntry(
                        index,
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: _vehicleComponent(index))))
                    .values
                    .toList(),
              ),
              heightSpace(3),
              customText(
                  text: 'What kind of goods can you move?',
                  fontSize: 14,
                  textColor: AppColors.textPrimary),
              heightSpace(3),
              DropdownSearch<String>.multiSelection(
                items: const [
                  'Documents, Files, Books or Stationary',
                  'Small appliances',
                  'Large Electronics, Luggages or Furniture',
                  'Frozen items, Perishables, or Prepared food delivery',
                  'Clothing, Accessories or Baby Products'
                ],
                popupProps: const PopupPropsMultiSelection.menu(
                  showSelectedItems: true,
                  // disabledItemFn: (String s) => s.startsWith('I'),
                ),
                onChanged: print,
                selectedItems: const ['Documents, Files, Books or Stationary'],
              ),
              heightSpace(3),
              TrackBudiDropdown(
                  dropdownList: deliveriesPerMonth,
                  label: 'Deliveries per month'),
              heightSpace(3),
              TrackBudiDropdown(
                  dropdownList: aboutUs, label: 'How did you hear about us'),
              heightSpace(3),
              const TrackBudiTextFormField(
                label: 'Enter referral code (Optional)',
              ),
              heightSpace(3),
              TrackBudiButton(
                  buttonText: 'I accept',
                  onTap: () => context.pushRoute(const AccountSelection())),
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

  _vehicleComponent(int index) => Container(
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 7.5.h,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.textformGrey),
            borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          vehicleType[index].isChecked
              ? Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primary),
                  child: const Center(
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
                text: vehicleType[index].vehicleType,
                fontSize: 14,
                textColor: AppColors.textPrimary),
          ),
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: arithmeticContainer('-'),
                  onTap: () {
                    vehicleType[index].quantity--;
                  },
                ),
                customText(
                    text: vehicleType[index].quantity.toString(),
                    fontSize: 14,
                    textColor: AppColors.textPrimary),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      vehicleType[index].quantity++;
                    });
                  },
                  child: arithmeticContainer('+'),
                )
              ],
            ),
          )
        ]),
      );
}
