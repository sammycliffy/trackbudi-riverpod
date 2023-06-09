import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_vendor_response_model.freezed.dart';
part 'create_vendor_response_model.g.dart';

@freezed
class CreateVendorResponseModel with _$CreateVendorResponseModel {
  const factory CreateVendorResponseModel({
    String? status,
    String? message,
    CreateVendorResponseModelData? data,
  }) = _CreateVendorResponseModel;

  factory CreateVendorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateVendorResponseModelFromJson(json);
}

@freezed
class CreateVendorResponseModelData with _$CreateVendorResponseModelData {
  const factory CreateVendorResponseModelData({
    bool? success,
    Vendor? vendor,
  }) = _CreateVendorResponseModelData;

  factory CreateVendorResponseModelData.fromJson(Map<String, dynamic> json) =>
      _$CreateVendorResponseModelDataFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    String? businessName,
    String? category,
    String? country,
    List<PickupAddress>? pickupAddresses,
    List<dynamic>? operatingDays,
    String? user,
    String? id,
    int? v,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class PickupAddress with _$PickupAddress {
  const factory PickupAddress({
    String? address,
    String? landmark,
    String? id,
  }) = _PickupAddress;

  factory PickupAddress.fromJson(Map<String, dynamic> json) =>
      _$PickupAddressFromJson(json);
}

var createVendorPayload = {
  'businessName': 'Sample Business',
  'category': 'Sample Category',
  'country': 'Sample Country',
  'pickupAddresses': [
    {'address': 'Sample Address 1', 'landmark': 'Sample Landmark 1'},
    {'address': 'Sample Address 2', 'landmark': 'Sample Landmark 2'}
  ]
};
