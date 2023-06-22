import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:trackbudi_mobile/src/config/db/m.dart';
import 'package:trackbudi_mobile/src/config/db/secure_storage.dart';
import 'package:trackbudi_mobile/src/config/di/injector.dart';
import 'package:trackbudi_mobile/src/config/keys/enum_keys.dart';
import 'package:trackbudi_mobile/src/config/keys/local_leys.dart';
import 'package:trackbudi_mobile/src/config/service/api/app_error.dart';
import 'package:trackbudi_mobile/src/core/mixin/input_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_reval.dart';
import 'package:trackbudi_mobile/src/core/mixin/password_val.dart';
import 'package:trackbudi_mobile/src/core/mixin/phone_val.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_event.dart';
import 'package:trackbudi_mobile/src/features/auth/auth_vm/auth_state.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/vehicle_type.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/domain/usecases/auth_u.dart';
import 'package:trackbudi_mobile/src/features/auth/presentation/widgets/custom_vendor_widget.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier({
    required this.verifyOtpUsecase,
    required this.resendOtpUsecase,
    required this.loginUsecase,
    required this.updateUserProfileUsecase,
    required this.updateUserTypeUsecase,
    required this.createVendorUsecase,
    required this.createlogisticPartnerUsecase,
    required this.updateVendorUsecase,
    required this.updatelogisticPartnerUsecase,
    required this.userLoginRequestOtpUsecase,
    required this.userLoginVerifyOtpUsecase,
    required this.initiateResetPasswordUsecase,
    required this.verifyResetPasswordUsecase,
    required this.resetPasswordUsecase,
    required this.phoneOnobardingUsecase,
  }) : super(AuthState()) {
    getRandyListData();
  }

  final PhoneOnobardingUsecase phoneOnobardingUsecase;
  final VerifyOtpUsecase verifyOtpUsecase;
  final ResendOtpUsecase resendOtpUsecase;
  final LoginUsecase loginUsecase;
  final UpdateUserProfileUsecase updateUserProfileUsecase;
  final UpdateUserTypeUsecase updateUserTypeUsecase;
  final CreateVendorUsecase createVendorUsecase;
  final CreatelogisticPartnerUsecase createlogisticPartnerUsecase;
  final UpdateVendorUsecase updateVendorUsecase;
  final UpdatelogisticPartnerUsecase updatelogisticPartnerUsecase;
  final UserLoginRequestOtpUsecase userLoginRequestOtpUsecase;
  final UserLoginVerifyOtpUsecase userLoginVerifyOtpUsecase;
  final InitiateResetPasswordUsecase initiateResetPasswordUsecase;
  final VerifyResetPasswordUsecase verifyResetPasswordUsecase;

  final ResetPasswordUsecase resetPasswordUsecase;
  final secureStore = si<SecureStore>();

  addMapToList(List<CustomVendorPickAddressWidget> cvvTxt,
      CustomVendorPickAddressWidget c) {
    cvvTxt = List.from(cvvTxt)..add(c);
    log('list :$cvvTxt');
    state = state.copyWith(widgetList: cvvTxt);
    log('state.widgetList: ${state.widgetList}');
  }

  void businessName(String value) {
    final businessName = Name.dirty(value);
    state = state.copyWith(
      businessName: businessName,
      vendorStatus: Formz.validate([
        businessName,
        state.selectedCountry,
        state.address,
        state.landmark,
      ]),
    );
  }

  void vendorPickupAdressF(String value) {
    final address = Name.dirty(value);
    state = state.copyWith(
      address: address,
      vendorStatus: Formz.validate([
        state.businessName,
        state.selectedCountry,
        address,
        state.landmark,
      ]),
    );
  }

  void vendorLandmark(String value) {
    final landmark = Name.dirty(value);
    state = state.copyWith(
      landmark: landmark,
      vendorStatus: Formz.validate([
        state.businessName,
        state.selectedCountry,
        state.address,
        landmark,
      ]),
    );
  }

  howdidYouHearboutUs(String? v) async {
    state = state.copyWith(howDidYouHearboutUS: v);
  }

  selectedCategory(String v) async {
    state = state.copyWith(selectedCategoryTxtStr: v);
    log('state-selectedCategoryTxtStr :${state.selectedCategoryTxtStr}');
  }

  deliveryPerMonthFunc(String v) async {
    state = state.copyWith(deliveryMethodStr: v);
    log('state-del :${state.deliveryMethodStr}');
  }

  kindOfGoodsFunc(List<String> v) async {
//listOfKindOfGoodsModel
    state = state.copyWith(listOfKindOfGoodsModel: v);
    log('kindOfgoods${state.listOfKindOfGoodsModel}');
  }

  void nameOfCompany(String value) {
    final companyName = Name.dirty(value);
    state = state.copyWith(
      nameOfCompany: companyName,
      LogisticStatus: Formz.validate([
        companyName,
        state.selectedCountry,
        state.address,
        state.landmark,
        state.website
      ]),
    );
  }

  void selectedVendorCountry(String value) {
    final selectedCountry = Name.dirty(value);
    state = state.copyWith(
      selectedCountry: selectedCountry,
      vendorStatus: Formz.validate([
        state.nameOfCompany,
        selectedCountry,
        state.address,
        state.landmark,
      ]),
    );

    log('sss--:${state.selectedCountry.value}');
  }

  void selectedCountry(String value) {
    final selectedCountry = Name.dirty(value);
    state = state.copyWith(
      selectedCountry: selectedCountry,
      LogisticStatus: Formz.validate([
        state.nameOfCompany,
        selectedCountry,
        state.address,
        state.landmark,
      ]),
    );

    log('sss--:${state.selectedCountry.value}');
  }

  void addressChanged(String value) {
    final address = Name.dirty(value);
    state = state.copyWith(
      address: address,
      LogisticStatus: Formz.validate([
        state.nameOfCompany,
        state.selectedCountry,
        address,
        state.landmark,
      ]),
    );
  }

  void landmark(String value) {
    final landmark = Name.dirty(value);
    state = state.copyWith(
      landmark: landmark,
      LogisticStatus: Formz.validate([
        state.nameOfCompany,
        state.selectedCountry,
        state.address,
        landmark,
      ]),
    );
  }

  void website(String value) {
    final websiteDta = Name.dirty(value);
    state = state.copyWith(website: websiteDta);
  }

  getRandyListData() async {
    state = state.copyWith(
        widgetList: widgetList,
        listOfpickupAddressModel: pickupAddress,
        categoryList: category,
        listOfvehicleType: vehicleType,
        listOfdeliveriesPerMonthModel: deliveriesPerMonth,
        listOfaboutUsModel: aboutUs);
  }

  removedata(List<VehicleTypeWidget>? list, VehicleTypeWidget d) {
    list = List.from(list!)
      ..removeWhere((element) => element.vehicle == d.vehicle);
    state = state.copyWith(listOfvehicleType: list);
    log('state.list: ${state.listOfvehicleType}');
  }

  convertListToMap(List<VehicleTypeWidget> v) {
    return v.map((a) => a.toMap()).toList();
  }

  convertListToMapI(List<PickupAddressModel> p) {
    return p.map((pp) => pp.toMap()).toList();
  }

  breakdownF(List<VehicleTypeWidget> data) {
    List<VehicleTypeWidget> commonMaps = [];

    for (var map1 in data) {
      for (var map2 in state.listOfvehicleType) {
        if (map1 == map2) {
          commonMaps.add(map1);
          break;
        }
      }
    }
    log('commonMaps:: $commonMaps');
    state = state.copyWith(
      listOfvehicleType: commonMaps,
      breakdown: commonMaps.map((e) {
        return {'vehicle': e.vehicle, 'quantity': e.quantity};
      }).reduce((value, element) => value..addAll(element)),
    );
    log('breakdown:: ${state.breakdown.toString()}');
  }

  incrementVehicleFunc(String? vehicleType) {
    state = state.copyWith(
      listOfvehicleType: state.listOfvehicleType
          .map((element) => element.vehicle == vehicleType
              ? element.copyWith(quantity: element.quantity! + 1)
              : element)
          .toList(),
    );
  }

  decrementVehicleFunc(String? vehicleType) {
    state = state.copyWith(
        listOfvehicleType: state.listOfvehicleType.map((element) {
      log('element.vehicleType:::  ${element.vehicle}');
      log('vehicleType::: $vehicleType');
      return element.vehicle == vehicleType
          ? element.copyWith(quantity: element.quantity! - 1)
          : element;
    }).toList());
  }

  void forgotPasswordEmailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      forgotPasswordSatus: Formz.validate([email, state.password]),
    );
  }

  void forgotPasswordTextChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      forgotPasswordSatus: Formz.validate([state.email, password]),
    );
  }

  void iniatietResetEmailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      InitiateforgotPasswordSatus: Formz.validate([email]),
    );
  }

  void loginEmailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      loginStatus: Formz.validate([email, state.password]),
    );
  }

  void loginPasswordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      loginStatus: Formz.validate([state.email, password]),
    );
  }

  void userTypeChangeF(UserType value) {
    state = state.copyWith(
        userTypeEnum: value, updateUserTypeStatus: FormzStatus.valid);
  }

  onChangeOtpVal(String otpVal) async {
    final otpValAbstract = Name.dirty(otpVal);
    if (otpVal.length == 4) {
      state = state.copyWith(
        otpVal: otpValAbstract,
        verifyOtpStatus: Formz.validate([otpValAbstract]),
      );
      log('otpVal : ${state.otpVal.value}');
    }
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      updateProfileStatus: Formz.validate(
          [email, state.fname, state.lname, state.password, state.rePassword]),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      updateProfileStatus: Formz.validate(
          [state.fname, state.lname, state.email, password, state.rePassword]),
    );
  }

  void rePasswordChanged(String value) {
    final rePassword = RePassword.dirty(value);
    state = state.copyWith(
      rePassword: rePassword,
      updateProfileStatus: Formz.validate(
          [state.fname, state.lname, state.email, state.password, rePassword]),
    );
  }

  void firstNameChanged(String value) {
    final fname = Name.dirty(value);
    state = state.copyWith(
      fname: fname,
      updateProfileStatus: Formz.validate(
          [fname, state.lname, state.email, state.password, state.rePassword]),
    );
  }

  void lastNameChanged(String value) {
    final lname = Name.dirty(value);
    state = state.copyWith(
      lname: lname,
      updateProfileStatus: Formz.validate(
          [state.fname, lname, state.email, state.password, state.rePassword]),
    );
  }

  void termsAndConditionChangedEvent(bool isTerm) {
    state = state.copyWith(
      isTermAndConditionVal: isTerm,
      updateProfileStatus: Formz.validate([
        state.fname,
        state.lname,
        state.email,
        state.password,
        state.rePassword
      ]),
    );
  }

  void mapEventsToState(AuthEvent authEvent) async {
    authEvent.map(
      changePohone: (PhoneEvent phoneEvent) async {
        final phoneVal = PhoneNumber.dirty(phoneEvent.value ?? '');
        state = state.copyWith(
          phoneNumber: phoneVal,
          countryCode: phoneEvent.countryCode ?? '',
          phoneStatus: Formz.validate([phoneVal]),
        );
      },
      registerPhone: (RegisterPhone registerPhone) async {
        var payload = {
          'countryCode': state.countryCode,
          'phone': state.phoneNumber.value
        };
        state = state.copyWith(phoneStatus: FormzStatus.submissionInProgress);

        final resp = await phoneOnobardingUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionSuccess,
              registerModel: r,
              userPhoneOnboardingModel: r.data?.user);

          secureStore.setString(PrefKeys.USER_DATA,
              json.encode(state.userPhoneOnboardingModel?.toJson()));
          secureStore.setString(PrefKeys.USER_PHONE, state.phoneNumber.value);
          secureStore.setString(
              PrefKeys.AUTH_TOKEN, state.registerModel?.data?.token);

          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      verifyOrrequestOrResendPhoneOtp:
          (RequestOrResendPhoneOtpEvent requestOrResendPhoneOtpEvent) async {
        state = state.copyWith(
            otpRequestOrResendTypeEnum:
                requestOrResendPhoneOtpEvent.otpRequestOrResendTypeEnum,
            verifyOtpStatus: FormzStatus.submissionInProgress);

        Either<AppError, VerifyOtp>? resp;

        switch (state.otpRequestOrResendTypeEnum) {
          case OtpRequestOrResendType.request:
            resp = await userLoginVerifyOtpUsecase(MajorPayload(
                otp: state.otpVal.value, phone: state.phoneNumber.value));
            break;

          case OtpRequestOrResendType.resend:
            resp = await resendOtpUsecase(
                MajorPayload(userId: state.userPhoneOnboardingModel?.id));
            break;

          case OtpRequestOrResendType.verifyOtp:
            resp = await verifyOtpUsecase(MajorPayload(
                otp: state.otpVal.value,
                userId: state.userPhoneOnboardingModel?.id));
            break;

          default:
            null;
        }
        resp?.fold((l) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionSuccess,
              verifyOtpModel: r);
        });
      },
      updateUserProfile: (UpdateUserProfileEvent updateUserProfileEvent) async {
        state = state.copyWith(
            updateProfileStatus: FormzStatus.submissionInProgress);

        final resp = await updateUserProfileUsecase(MajorPayload(
            email: state.email.value,
            firstName: state.fname.value,
            lastName: state.lname.value,
            password: state.password.value,
            userId: state.userPhoneOnboardingModel?.id));

        resp.fold((l) {
          state = state.copyWith(
              updateProfileStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              updateProfileStatus: FormzStatus.submissionSuccess,
              updatedUserDetails: r,
              userPhoneOnboardingModel: r.data?.user);
          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      updateUserType: (UpdateUserTypeEvent updateUserTypeEvent) async {
        state = state.copyWith(
            updateUserTypeStatus: FormzStatus.submissionInProgress);
        Map<String, dynamic>? payload;

        switch (state.userTypeEnum) {
          case UserType.vendorType:
            payload = {'userType': 'Vendor/SMB'};
            break;
          case UserType.LogisticsPartner:
            payload = {'userType': UserType.LogisticsPartner.name};
            break;
          default:
            null;
        }

        final resp = await updateUserTypeUsecase(payload!);

        resp.fold((l) {
          state = state.copyWith(
              updateUserTypeStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              updateUserTypeStatus: FormzStatus.submissionSuccess,
              updatedUserDetails: r,
              userPhoneOnboardingModel: r.data?.user);
          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      createOrUpdateLogisticPatner: (CreateOrUpdateLogisticPatnerEvent
          createOrUpdateLogisticPatnerEvent) async {
        state = state.copyWith(
            convertListToMap: convertListToMap(state.listOfvehicleType));

        log('convertListToMap::: $convertListToMap');
        var payload = {
          'companyName': state.nameOfCompany.value,
          'country': state.selectedCountry.value,
          'address': state.address.value,
          'landmark': state.landmark.value,
          'website': state.website.value,
          'vehicleTypes': state.convertListToMap,
          'goodsType': state.listOfKindOfGoodsModel,
          'deliveriesPerMonth': state.deliveryMethodStr,
          'howDidYouHear': state.howDidYouHearboutUS,
          'referralCode': 'optional'
        };
        state =
            state.copyWith(LogisticStatus: FormzStatus.submissionInProgress);

        final resp = await createlogisticPartnerUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              LogisticStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              LogisticStatus: FormzStatus.submissionSuccess,
              createLogisticPartnerRespModel: r);
          log('createLogisticPartnerRespModel : ${state.createLogisticPartnerRespModel}');
        });
      },
      createOrUpdateVendor: (CreateOrUpdateVendorEvent value) async {
        //createVendorUsecase

        state = state.copyWith(
            convertListToMap:
                convertListToMapI(state.listOfpickupAddressModel));

        log('convertListToMap::: $convertListToMapI');
        var payload = {
          'businessName': state.businessName.value,
          'category': state.selectedCategoryTxtStr,
          'address': state.address.value,
          'landmark': state.landmark.value,
          'pickupAddresses': state.convertListToMap,
        };
        state = state.copyWith(vendorStatus: FormzStatus.submissionInProgress);

        final resp = await createVendorUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              vendorStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              vendorStatus: FormzStatus.submissionSuccess,
              createVendorResponseModel: r);
          log('createVendorResponseModel : ${state.createVendorResponseModel}');
        });
      },
      initiateForgotPassword:
          (InitiateForgotPasswordEvent initiateForgotPasswordEvent) async {
        var payload = {'email': state.email.value};
        state = state.copyWith(
            otpRequestOrResendTypeEnum: OtpRequestOrResendType.resetPasswordOtp,
            InitiateforgotPasswordSatus: FormzStatus.submissionInProgress);

        final resp = await initiateResetPasswordUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              InitiateforgotPasswordSatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              InitiateforgotPasswordSatus: FormzStatus.submissionSuccess,
              registerModel: r,
              userPhoneOnboardingModel: r.data?.user);
          log('userPhoneOnboardingModel : ${state.userPhoneOnboardingModel}');
        });
      },
      verifyResetTokenToCompleteForgotPassword:
          (VerifyResetTokenToCompleteForgotPasswordEvent
              verifyResetTokenToCompleteForgotPasswordEvent) async {
        var payload = {'resetOTP': state.otpVal.value};
        state =
            state.copyWith(verifyOtpStatus: FormzStatus.submissionInProgress);

        final resp = await verifyResetPasswordUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              verifyOtpStatus: FormzStatus.submissionSuccess,
              verifyResetTokenModel: r);
          log('verifyResetTokenModel : ${state.verifyResetTokenModel}');
        });
      },
      forgotPassword:
          (CompleteForgotPasswordEvent completeForgotPasswordEvent) async {
        var payload = {
          'email': state.email.value,
          'password': state.password.value
        };
        state = state.copyWith(
            forgotPasswordSatus: FormzStatus.submissionInProgress);

        final resp = await resetPasswordUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              forgotPasswordSatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              forgotPasswordSatus: FormzStatus.submissionSuccess,
              registerModel: r);
          log('registerModel : ${state.registerModel}');
        });
      },
      loginWithEmail: (LoginWithEmailEvent value) async {
        state = state.copyWith(loginStatus: FormzStatus.submissionInProgress);
        var payload = {
          'email': state.email.value,
          'password': state.password.value
        };
        final resp = await loginUsecase(payload);

        resp.fold((l) {
          state = state.copyWith(
              loginStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              loginStatus: FormzStatus.submissionSuccess, registerModel: r);
          log('registerModel : ${state.registerModel}');
        });
      },
      loginWithPhone: (LoginWithPhoneEvent value) async {
        state = state.copyWith(
            loginType: value.loginType,
            otpRequestOrResendTypeEnum: OtpRequestOrResendType.request,
            phoneStatus: FormzStatus.submissionInProgress);
        final resp = await userLoginRequestOtpUsecase(MajorPayload(
            countryCode: state.countryCode, phone: state.phoneNumber.value));

        resp.fold((l) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionFailure,
              exceptionError: l.message);
        }, (r) {
          state = state.copyWith(
              phoneStatus: FormzStatus.submissionSuccess, verifyOtpModel: r);
          log('verifyOtpModel : ${state.verifyOtpModel}');
        });
      },
    );
  }
}
