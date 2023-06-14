// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RegisterData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_RegisterData _$$_RegisterDataFromJson(Map<String, dynamic> json) =>
    _$_RegisterData(
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_RegisterDataToJson(_$_RegisterData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
