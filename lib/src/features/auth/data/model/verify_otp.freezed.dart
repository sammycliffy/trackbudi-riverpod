// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyOtp _$VerifyOtpFromJson(Map<String, dynamic> json) {
  return _VerifyOtp.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtp {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VerifyData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpCopyWith<VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpCopyWith<$Res> {
  factory $VerifyOtpCopyWith(VerifyOtp value, $Res Function(VerifyOtp) then) =
      _$VerifyOtpCopyWithImpl<$Res, VerifyOtp>;
  @useResult
  $Res call({String? status, String? message, VerifyData? data});

  $VerifyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyOtpCopyWithImpl<$Res, $Val extends VerifyOtp>
    implements $VerifyOtpCopyWith<$Res> {
  _$VerifyOtpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VerifyData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VerifyOtpCopyWith<$Res> implements $VerifyOtpCopyWith<$Res> {
  factory _$$_VerifyOtpCopyWith(
          _$_VerifyOtp value, $Res Function(_$_VerifyOtp) then) =
      __$$_VerifyOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, VerifyData? data});

  @override
  $VerifyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_VerifyOtpCopyWithImpl<$Res>
    extends _$VerifyOtpCopyWithImpl<$Res, _$_VerifyOtp>
    implements _$$_VerifyOtpCopyWith<$Res> {
  __$$_VerifyOtpCopyWithImpl(
      _$_VerifyOtp _value, $Res Function(_$_VerifyOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_VerifyOtp(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VerifyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp({this.status, this.message, this.data});

  factory _$_VerifyOtp.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final VerifyData? data;

  @override
  String toString() {
    return 'VerifyOtp(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtp &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      __$$_VerifyOtpCopyWithImpl<_$_VerifyOtp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpToJson(
      this,
    );
  }
}

abstract class _VerifyOtp implements VerifyOtp {
  const factory _VerifyOtp(
      {final String? status,
      final String? message,
      final VerifyData? data}) = _$_VerifyOtp;

  factory _VerifyOtp.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtp.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  VerifyData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyData _$VerifyDataFromJson(Map<String, dynamic> json) {
  return _VerifyData.fromJson(json);
}

/// @nodoc
mixin _$VerifyData {
  bool? get success => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyDataCopyWith<VerifyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyDataCopyWith<$Res> {
  factory $VerifyDataCopyWith(
          VerifyData value, $Res Function(VerifyData) then) =
      _$VerifyDataCopyWithImpl<$Res, VerifyData>;
  @useResult
  $Res call({bool? success, String? otp, String? token});
}

/// @nodoc
class _$VerifyDataCopyWithImpl<$Res, $Val extends VerifyData>
    implements $VerifyDataCopyWith<$Res> {
  _$VerifyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? otp = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyDataCopyWith<$Res>
    implements $VerifyDataCopyWith<$Res> {
  factory _$$_VerifyDataCopyWith(
          _$_VerifyData value, $Res Function(_$_VerifyData) then) =
      __$$_VerifyDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? otp, String? token});
}

/// @nodoc
class __$$_VerifyDataCopyWithImpl<$Res>
    extends _$VerifyDataCopyWithImpl<$Res, _$_VerifyData>
    implements _$$_VerifyDataCopyWith<$Res> {
  __$$_VerifyDataCopyWithImpl(
      _$_VerifyData _value, $Res Function(_$_VerifyData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? otp = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_VerifyData(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyData implements _VerifyData {
  const _$_VerifyData({this.success, this.otp, this.token});

  factory _$_VerifyData.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyDataFromJson(json);

  @override
  final bool? success;
  @override
  final String? otp;
  @override
  final String? token;

  @override
  String toString() {
    return 'VerifyData(success: $success, otp: $otp, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyData &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, otp, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyDataCopyWith<_$_VerifyData> get copyWith =>
      __$$_VerifyDataCopyWithImpl<_$_VerifyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyDataToJson(
      this,
    );
  }
}

abstract class _VerifyData implements VerifyData {
  const factory _VerifyData(
      {final bool? success,
      final String? otp,
      final String? token}) = _$_VerifyData;

  factory _VerifyData.fromJson(Map<String, dynamic> json) =
      _$_VerifyData.fromJson;

  @override
  bool? get success;
  @override
  String? get otp;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyDataCopyWith<_$_VerifyData> get copyWith =>
      throw _privateConstructorUsedError;
}
