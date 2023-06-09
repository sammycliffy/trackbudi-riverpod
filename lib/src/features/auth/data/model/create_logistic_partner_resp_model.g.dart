// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

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
      country: json['country'] as String?,
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
      website: json['website'] as String?,
      vehicleTypes: (json['vehicleTypes'] as List<dynamic>?)
          ?.map((e) => VehicleType.fromJson(e as Map<String, dynamic>))
          .toList(),
      goodsType: json['goodsType'] as String?,
      deliveriesPerMonth: json['deliveriesPerMonth'] as int?,
      howDidYouHear: json['howDidYouHear'] as String?,
      referralCode: json['referralCode'] as String?,
      operatingDays: json['operatingDays'] as List<dynamic>?,
      user: json['user'] as String?,
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_LogisticsPartnerToJson(_$_LogisticsPartner instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'country': instance.country,
      'address': instance.address,
      'landmark': instance.landmark,
      'website': instance.website,
      'vehicleTypes': instance.vehicleTypes,
      'goodsType': instance.goodsType,
      'deliveriesPerMonth': instance.deliveriesPerMonth,
      'howDidYouHear': instance.howDidYouHear,
      'referralCode': instance.referralCode,
      'operatingDays': instance.operatingDays,
      'user': instance.user,
      'id': instance.id,
      'v': instance.v,
    };

_$_VehicleType _$$_VehicleTypeFromJson(Map<String, dynamic> json) =>
    _$_VehicleType(
      vehicle: json['vehicle'] as String?,
      quantity: json['quantity'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_VehicleTypeToJson(_$_VehicleType instance) =>
    <String, dynamic>{
      'vehicle': instance.vehicle,
      'quantity': instance.quantity,
      'id': instance.id,
    };
