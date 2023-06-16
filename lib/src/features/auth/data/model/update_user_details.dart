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
    String? id,
    String? phone,
    String? countryCode,
    String? phoneVerified,
    String? role,
    int? v,
    String? email,
    String? firstName,
    String? lastName,
    String? userType,
    String? logisticsPartner,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
