// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_user_details.freezed.dart';
part 'update_user_details.g.dart';

@freezed
class UpdateUserDetails with _$UpdateUserDetails {
  const factory UpdateUserDetails({
    String? status,
    String? message,
    Data? data,
  }) = _UpdateUserDetails;

  factory UpdateUserDetails.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDetailsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    UserData? user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: '_id') String? id,
    String? phone,
    String? countryCode,
    bool? phoneVerified,
    String? role,
    @JsonKey(name: '_v') int? v,
    String? email,
    String? firstName,
    String? lastName,
    String? userType,
    String? logisticsPartner,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
