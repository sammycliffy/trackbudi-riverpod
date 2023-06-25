// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserDetails _$$_UpdateUserDetailsFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserDetails(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateUserDetailsToJson(
        _$_UpdateUserDetails instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'user': instance.user,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      id: json['_id'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
      phoneVerified: json['phoneVerified'] as bool?,
      onboarding_status: json['onboarding_status'] as int?,
      role: json['role'] as String?,
      v: json['_v'] as int?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userType: json['userType'] as String?,
      logisticsPartner: json['logisticsPartner'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'phoneVerified': instance.phoneVerified,
      'onboarding_status': instance.onboarding_status,
      'role': instance.role,
      '_v': instance.v,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userType': instance.userType,
      'logisticsPartner': instance.logisticsPartner,
    };
