import 'package:flutter/material.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';

class CustomVendorPickAddressWidget extends StatelessWidget {
  final void Function(String)? address;
  final String? a, l;
  final void Function(String)? landmark;
  const CustomVendorPickAddressWidget({
    super.key,
    this.address,
    this.landmark,
    this.a,
    this.l,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextField(
            onChanged: address,
            style: TextStyle(fontSize: 11),
            decoration: InputDecoration(
                errorText: a,
                errorStyle: TextStyle(fontSize: 10),
                hintText: 'e.g no 8 example street',
                hintStyle: TextStyle(fontSize: 11),
                prefixIcon: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.textformGrey)),
                    child: Icon(
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
          heightSpace(2),
          TrackBudiTextFormField(
              label: 'Landmark', error: l, onChanged: landmark),
        ],
      ),
    );
  }
}
