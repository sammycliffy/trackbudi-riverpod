// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vendor_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateVendorResponseModel _$$_CreateVendorResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateVendorResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateVendorResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateVendorResponseModelToJson(
        _$_CreateVendorResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_CreateVendorResponseModelData _$$_CreateVendorResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    _$_CreateVendorResponseModelData(
      success: json['success'] as bool?,
      vendor: json['vendor'] == null
          ? null
          : Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateVendorResponseModelDataToJson(
        _$_CreateVendorResponseModelData instance) =>
    <String, dynamic>{
      'success': instance.success,
      'vendor': instance.vendor,
    };

_$_Vendor _$$_VendorFromJson(Map<String, dynamic> json) => _$_Vendor(
      businessName: json['businessName'] as String?,
      category: json['category'] as String?,
      country: json['country'] as String?,
      pickupAddresses: (json['pickupAddresses'] as List<dynamic>?)
          ?.map((e) => PickupAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      operatingDays: json['operatingDays'] as List<dynamic>?,
      user: json['user'] as String?,
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_VendorToJson(_$_Vendor instance) => <String, dynamic>{
      'businessName': instance.businessName,
      'category': instance.category,
      'country': instance.country,
      'pickupAddresses': instance.pickupAddresses,
      'operatingDays': instance.operatingDays,
      'user': instance.user,
      'id': instance.id,
      'v': instance.v,
    };

_$_PickupAddress _$$_PickupAddressFromJson(Map<String, dynamic> json) =>
    _$_PickupAddress(
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_PickupAddressToJson(_$_PickupAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'landmark': instance.landmark,
      'id': instance.id,
    };
