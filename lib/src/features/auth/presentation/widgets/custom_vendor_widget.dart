import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/app_textformfield.dart';

class CustomVendorPickAddressWidget extends ConsumerWidget {
  const CustomVendorPickAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    return SizedBox(
      height: 180,
      child: Column(
        children: [
          SizedBox(
            height: 54,
            child: TextFormField(
              style: TextStyle(fontSize: 11),
              decoration: InputDecoration(
                  hintText: 'e.g no 8 example street',
                  hintStyle: TextStyle(fontSize: 11),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.textformGrey)),
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
          TrackBudiTextFormField(
            label: 'Landmark',
            error: state.landmark.error?.name,
            onChanged: (value) =>
                ref.read(authNotifier.notifier).vendorLandmark(value),
          ),
        ],
      ),
    );
  }
}
