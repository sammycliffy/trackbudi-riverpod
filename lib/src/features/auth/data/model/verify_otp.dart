import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp.freezed.dart';
part 'verify_otp.g.dart';

@freezed
class VerifyOtp with _$VerifyOtp {
  const factory VerifyOtp({
    String? status,
    String? message,
    VerifyData? data,
  }) = _VerifyOtp;

  factory VerifyOtp.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpFromJson(json);
}

@freezed
class VerifyData with _$VerifyData {
  const factory VerifyData({
    bool? success,
    String? otp,
    String? token,
  }) = _VerifyData;

  factory VerifyData.fromJson(Map<String, dynamic> json) =>
      _$VerifyDataFromJson(json);
}
