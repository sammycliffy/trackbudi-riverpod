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
    String? country,
    String? address,
    String? landmark,
    String? website,
    List<VehicleType>? vehicleTypes,
    String? goodsType,
    int? deliveriesPerMonth,
    String? howDidYouHear,
    String? referralCode,
    List<dynamic>? operatingDays,
    String? user,
    String? id,
    int? v,
  }) = _LogisticsPartner;

  factory LogisticsPartner.fromJson(Map<String, dynamic> json) =>
      _$LogisticsPartnerFromJson(json);
}

@freezed
class VehicleType with _$VehicleType {
  const factory VehicleType({
    String? vehicle,
    int? quantity,
    String? id,
  }) = _VehicleType;

  factory VehicleType.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeFromJson(json);
}

var createLogistPayload = {
  'businessName': 'Sample Business',
  'category': 'Sample Category',
  'country': 'Sample Country',
  'pickupAddresses': [
    {'address': 'Sample Address 1', 'landmark': 'Sample Landmark 1'},
    {'address': 'Sample Address 2', 'landmark': 'Sample Landmark 2'}
  ]
};
