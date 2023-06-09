import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_reset_token_model.freezed.dart';
part 'verify_reset_token_model.g.dart';

@freezed
class VerifyResetTokenModel with _$VerifyResetTokenModel {
  const factory VerifyResetTokenModel({
    String? status,
    VerifyResetTokenModelData? data,
  }) = _VerifyResetTokenModel;

  factory VerifyResetTokenModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetTokenModelFromJson(json);
}

@freezed
class VerifyResetTokenModelData with _$VerifyResetTokenModelData {
  const factory VerifyResetTokenModelData({
    bool? success,
    ResetDataObj? data,
  }) = _VerifyResetTokenModelData;

  factory VerifyResetTokenModelData.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetTokenModelDataFromJson(json);
}

@freezed
class ResetDataObj with _$ResetDataObj {
  const factory ResetDataObj({
    String? user,
    String? message,
  }) = _ResetDataObj;

  factory ResetDataObj.fromJson(Map<String, dynamic> json) =>
      _$ResetDataObjFromJson(json);
}
