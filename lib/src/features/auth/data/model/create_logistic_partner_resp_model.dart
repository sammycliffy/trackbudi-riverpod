// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_logistic_partner_resp_model.freezed.dart';
part 'create_logistic_partner_resp_model.g.dart';

@freezed
class CreateLogisticPartnerRespModel with _$CreateLogisticPartnerRespModel {
  const factory CreateLogisticPartnerRespModel({
    String? status,
    String? message,
    CreateLogisticPartnerRespModelData? data,
  }) = _CreateLogisticPartnerRespModel;

  factory CreateLogisticPartnerRespModel.fromJson(Map<String, dynamic> json) =>
      _$CreateLogisticPartnerRespModelFromJson(json);
}

@freezed
class CreateLogisticPartnerRespModelData
    with _$CreateLogisticPartnerRespModelData {
  const factory CreateLogisticPartnerRespModelData({
    bool? success,
    LogisticsPartner? logisticsPartner,
  }) = _CreateLogisticPartnerRespModelData;

  factory CreateLogisticPartnerRespModelData.fromJson(
          Map<String, dynamic> json) =>
      _$CreateLogisticPartnerRespModelDataFromJson(json);
}

@freezed
class LogisticsPartner with _$LogisticsPartner {
  const factory LogisticsPartner({
    String? companyName,
    Logo? logo,
    String? country,
    String? address,
    String? landmark,
    String? website,
    List<VehicleType>? vehicleTypes,
    List<String>? goodsType,
    String? deliveriesPerMonth,
    String? howDidYouHear,
    String? referralCode,
    bool? cacRegistered,
    bool? nipostLicensed,
    bool? isVerified,
    List<dynamic>? operatingDays,
    String? user,
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: '_v') int? v,
  }) = _LogisticsPartner;

  factory LogisticsPartner.fromJson(Map<String, dynamic> json) =>
      _$LogisticsPartnerFromJson(json);
}

@freezed
class Logo with _$Logo {
  const factory Logo({
    @JsonKey(name: '_id') String? id,
  }) = _Logo;

  factory Logo.fromJson(Map<String, dynamic> json) => _$LogoFromJson(json);
}

@freezed
class VehicleType with _$VehicleType {
  const factory VehicleType({
    String? vehicle,
    int? quantity,
    @JsonKey(name: '_id') String? id,
  }) = _VehicleType;

  factory VehicleType.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeFromJson(json);
}
