// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'verify_reset_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyResetTokenModel _$$_VerifyResetTokenModelFromJson(
        Map<String, dynamic> json) =>
    _$_VerifyResetTokenModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : VerifyResetTokenModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerifyResetTokenModelToJson(
        _$_VerifyResetTokenModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_VerifyResetTokenModelData _$$_VerifyResetTokenModelDataFromJson(
        Map<String, dynamic> json) =>
    _$_VerifyResetTokenModelData(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : ResetDataObj.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerifyResetTokenModelDataToJson(
        _$_VerifyResetTokenModelData instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$_ResetDataObj _$$_ResetDataObjFromJson(Map<String, dynamic> json) =>
    _$_ResetDataObj(
      user: json['user'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ResetDataObjToJson(_$_ResetDataObj instance) =>
    <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
    };
