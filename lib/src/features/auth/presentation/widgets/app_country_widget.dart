import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/shared/resources/app_images.dart';
import '../../../../core/shared/resources/colors_tr.dart';
import '../../../../core/shared/resources/custom_text.dart';

class CountryWidget extends StatefulWidget {
  final Function(String?) selectCountry;
  const CountryWidget({super.key, required this.selectCountry});

  @override
  State<CountryWidget> createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  String countryName = 'Nigeria';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            inputDecoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                ),
              ),
            ),
            searchTextStyle: const TextStyle(
              color: Colors.blue,
              fontSize: 18,
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
              fontSize: 14,
              textColor: AppColors.textPrimary),
          SvgPicture.asset(AppImages.dropdown)
        ]),
      ),
    );
  }
}
