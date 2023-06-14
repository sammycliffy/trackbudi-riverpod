// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyOtp _$$_VerifyOtpFromJson(Map<String, dynamic> json) => _$_VerifyOtp(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerifyOtpToJson(_$_VerifyOtp instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_VerifyData _$$_VerifyDataFromJson(Map<String, dynamic> json) =>
    _$_VerifyData(
      success: json['success'] as bool?,
      otp: json['otp'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_VerifyDataToJson(_$_VerifyData instance) =>
    <String, dynamic>{
      'success': instance.success,
      'otp': instance.otp,
      'token': instance.token,
    };
