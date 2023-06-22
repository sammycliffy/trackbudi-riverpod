// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_logistic_partner_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateLogisticPartnerRespModel _$$_CreateLogisticPartnerRespModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateLogisticPartnerRespModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateLogisticPartnerRespModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateLogisticPartnerRespModelToJson(
        _$_CreateLogisticPartnerRespModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_CreateLogisticPartnerRespModelData
    _$$_CreateLogisticPartnerRespModelDataFromJson(Map<String, dynamic> json) =>
        _$_CreateLogisticPartnerRespModelData(
          success: json['success'] as bool?,
          logisticsPartner: json['logisticsPartner'] == null
              ? null
              : LogisticsPartner.fromJson(
                  json['logisticsPartner'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_CreateLogisticPartnerRespModelDataToJson(
        _$_CreateLogisticPartnerRespModelData instance) =>
    <String, dynamic>{
      'success': instance.success,
      'logisticsPartner': instance.logisticsPartner,
    };

_$_LogisticsPartner _$$_LogisticsPartnerFromJson(Map<String, dynamic> json) =>
    _$_LogisticsPartner(
      companyName: json['companyName'] as String?,
      logo: json['logo'] == null
          ? null
          : Logo.fromJson(json['logo'] as Map<String, dynamic>),
      country: json['country'] as String?,
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
      website: json['website'] as String?,
      vehicleTypes: (json['vehicleTypes'] as List<dynamic>?)
          ?.map((e) => VehicleType.fromJson(e as Map<String, dynamic>))
          .toList(),
      goodsType: (json['goodsType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deliveriesPerMonth: json['deliveriesPerMonth'] as String?,
      howDidYouHear: json['howDidYouHear'] as String?,
      referralCode: json['referralCode'] as String?,
      cacRegistered: json['cacRegistered'] as bool?,
      nipostLicensed: json['nipostLicensed'] as bool?,
      isVerified: json['isVerified'] as bool?,
      operatingDays: json['operatingDays'] as List<dynamic>?,
      user: json['user'] as String?,
      id: json['_id'] as String?,
      v: json['_v'] as int?,
    );

Map<String, dynamic> _$$_LogisticsPartnerToJson(_$_LogisticsPartner instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'logo': instance.logo,
      'country': instance.country,
      'address': instance.address,
      'landmark': instance.landmark,
      'website': instance.website,
      'vehicleTypes': instance.vehicleTypes,
      'goodsType': instance.goodsType,
      'deliveriesPerMonth': instance.deliveriesPerMonth,
      'howDidYouHear': instance.howDidYouHear,
      'referralCode': instance.referralCode,
      'cacRegistered': instance.cacRegistered,
      'nipostLicensed': instance.nipostLicensed,
      'isVerified': instance.isVerified,
      'operatingDays': instance.operatingDays,
      'user': instance.user,
      '_id': instance.id,
      '_v': instance.v,
    };

_$_Logo _$$_LogoFromJson(Map<String, dynamic> json) => _$_Logo(
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_LogoToJson(_$_Logo instance) => <String, dynamic>{
      '_id': instance.id,
    };

_$_VehicleType _$$_VehicleTypeFromJson(Map<String, dynamic> json) =>
    _$_VehicleType(
      vehicle: json['vehicle'] as String?,
      quantity: json['quantity'] as int?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_VehicleTypeToJson(_$_VehicleType instance) =>
    <String, dynamic>{
      'vehicle': instance.vehicle,
      'quantity': instance.quantity,
      '_id': instance.id,
    };
