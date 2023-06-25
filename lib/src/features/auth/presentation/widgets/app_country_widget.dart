import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_images.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';

class CountryWidget extends StatefulWidget {
  final Function(String?) selectCountry;
  final String? error;
  const CountryWidget({super.key, this.error, required this.selectCountry});

  @override
  State<CountryWidget> createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  String countryName = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: GestureDetector(
        onTap: () {
          showCountryPicker(
            context: context,
            showPhoneCode: true,
            onSelect: (Country country) {
              setState(() {
                countryName = country.name;
              });
              widget.selectCountry(countryName);
              // log(country.name);
              // log(country.displayName);
              // log(country.displayNameNoCountryCode);
              // log(country.flagEmoji);
              print('Select country: ${country.displayName}');
            },
            countryListTheme: CountryListThemeData(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              textStyle: TextStyle(
                color: AppColors.black,
                fontSize: 11,
              ),
              inputDecoration: InputDecoration(
                errorText: widget.error,
                labelStyle: TextStyle(fontSize: 11),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: AppColors.normalBorder,
                focusedBorder: AppColors.normalBorder,
                labelText: 'Search',
                hintText: 'Start typing to search',
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.textformGrey,
                  size: 18,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textformGrey),
                ),
              ),
              searchTextStyle: TextStyle(
                color: AppColors.black,
                fontSize: 11,
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 8.h,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.textformGrey),
              borderRadius: BorderRadius.circular(8)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            customText(
                text: countryName,
                fontSize: 11,
                textColor: AppColors.textPrimary),
            SvgPicture.asset(AppImages.dropdown)
          ]),
        ),
      ),
    );
  }
}
