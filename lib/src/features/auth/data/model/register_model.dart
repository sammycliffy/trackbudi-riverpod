import 'package:freezed_annotation/freezed_annotation.dart';
import 'update_user_details.dart';
part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    String? status,
    String? message,
    RegisterData? data,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    UserData? user,
    String? token,
  }) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}

Map<String?, dynamic> registerPayload = {
  'countryCode': '+234',
  'phone': '8155794698'
};
