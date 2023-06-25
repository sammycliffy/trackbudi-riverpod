import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/trackbudi_button.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/vehicle_widget.dart';

final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
    GlobalKey<RefreshIndicatorState>();

class CompanyRegistration extends HookConsumerWidget {
  const CompanyRegistration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCurrent = useState<int>(0);
    // int currenInd;
    final state = ref.watch(authNotifier.select((vaue) => vaue));

    ref.listen(authNotifier, (previousState, newState) {
      if (previousState?.LogisticStatus != newState.LogisticStatus) {
        if (newState.LogisticStatus.isSubmissionFailure) {
          ToastResp.toastMsgError(resp: newState.exceptionError);
        } else if (newState.LogisticStatus.isSubmissionSuccess) {
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
                      width: 80,
                      height: 80,
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
                  label: 'Name of Company',
                  error: state.nameOfCompany.invalid
                      ? state.nameOfCompany.error?.name
                      : null,
                  onChanged: (p0) =>
                      ref.read(authNotifier.notifier).nameOfCompany(p0),
                ),
                heightSpace(2),
                customText(
                    text: 'Select country',
                    fontSize: 11,
                    textColor: AppColors.textPrimary),
                heightSpace(2),
                CountryWidget(
                    selectCountry: (val) => ref
                        .read(authNotifier.notifier)
                        .selectedCountry(val.toString())),
                heightSpace(2),
                TrackBudiTextFormField(
                  label: 'Address',
                  error:
                      state.address.invalid ? state.address.error?.name : null,
                  onChanged: (p0) =>
                      ref.read(authNotifier.notifier).addressChanged(p0),
                ),
                heightSpace(2),
                TrackBudiTextFormField(
                  label: 'Landmark',
                  error: state.landmark.invalid
                      ? state.landmark.error?.name
                      : null,
                  onChanged: (p0) =>
                      ref.read(authNotifier.notifier).landmark(p0),
                ),
                heightSpace(2),
                TrackBudiTextFormField(
                  label: 'Website',
                  onChanged: (p0) =>
                      ref.read(authNotifier.notifier).website(p0),
                  hintText: 'Optional',
                ),
                heightSpace(3),
                customText(
                    text: 'Vehicle type',
                    fontSize: 11,
                    textColor: AppColors.textPrimary),
                heightSpace(2),
                Column(
                  children: state.listOfvehicleType
                      .asMap()
                      .map((index, element) => MapEntry(
                            index,
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Dismissible(
                                  background: Container(
                                    color: Colors.red,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.delete,
                                            color: AppColors.white,
                                          ),
                                          widthSpace(20),
                                          customText(
                                              text: 'Remove',
                                              fontSize: 11,
                                              textColor: AppColors.white),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onDismissed: (DismissDirection direction) =>
                                      ref
                                          .read(authNotifier.notifier)
                                          .removedata(
                                              state.listOfvehicleType, element),
                                  key: UniqueKey(),
                                  child: vehicleComponent(
                                    uncheck: () => isCurrent.value = index,
                                    isSelected:
                                        isCurrent.value == index ? true : false,
                                    label: element.vehicle,
                                    increaseValue: () => ref
                                        .read(authNotifier.notifier)
                                        .incrementVehicleFunc(element.vehicle),
                                    quantity: element.quantity.toString(),
                                    decreaseValue: element.quantity == 0
                                        ? () {}
                                        : () => ref
                                            .read(authNotifier.notifier)
                                            .decrementVehicleFunc(
                                                element.vehicle),
                                  ),
                                )),
                          ))
                      .values
                      .toList(),
                ),
                heightSpace(3),
                customText(
                    text: 'What kind of goods can you move?',
                    fontSize: 11,
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

                  popupProps: PopupPropsMultiSelection.menu(
                    showSelectedItems: true,
                  ),
                  validator: (value) => (value!.isEmpty) ? 'Required' : null,
                  onChanged: (v) =>
                      ref.read(authNotifier.notifier).kindOfGoodsFunc(v),
                  // selectedItems: const [
                  //   'Documents, Files, Books or Stationary'
                  // ],
                ),
                heightSpace(3),
                TrackBudiDropdown(
                  dropdownList: state.listOfdeliveriesPerMonthModel,
                  label: 'Deliveries per month',
                  onChange: (val) => ref
                      .read(authNotifier.notifier)
                      .deliveryPerMonthFunc(val.toString()),
                ),
                heightSpace(3),
                TrackBudiDropdown(
                  dropdownList: state.listOfaboutUsModel,
                  label: 'How did you hear about us',
                  onChange: (val) => ref
                      .read(authNotifier.notifier)
                      .howdidYouHearboutUs(val.toString()),
                ),
                heightSpace(3),
                const TrackBudiTextFormField(
                  label: 'Enter referral code (Optional)',
                ),
                heightSpace(3),
                TrackBudiButton(
                    buttonText: 'I accept',
                    // onTap: () => context.pushRoute(SettingUp()),

                    disable: !state.displayLogisticButton,
                    isLoading: state.LogisticStatus.isSubmissionInProgress,
                    onTap: state.displayLogisticButton
                        ? () {
                            ref.read(authNotifier.notifier).mapEventsToState(
                                CreateOrUpdateLogisticPatnerEvent());
                          }
                        : () {}),
                heightSpace(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bodyText(text: 'Already have an account?'),
                    widthSpace(2),
                    GestureDetector(
                      onTap: () => context.pushRoute(LoginView()),
                      child: customText(
                          text: 'Login',
                          fontSize: 14,
                          textColor: AppColors.textPrimary),
                    )
                  ],
                ),
                heightSpace(5)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
