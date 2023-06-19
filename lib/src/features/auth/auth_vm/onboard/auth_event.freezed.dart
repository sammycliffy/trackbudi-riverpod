// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhoneEventCopyWith<$Res> {
  factory _$$PhoneEventCopyWith(
          _$PhoneEvent value, $Res Function(_$PhoneEvent) then) =
      __$$PhoneEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value, String? countryCode});
}

/// @nodoc
class __$$PhoneEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PhoneEvent>
    implements _$$PhoneEventCopyWith<$Res> {
  __$$PhoneEventCopyWithImpl(
      _$PhoneEvent _value, $Res Function(_$PhoneEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$PhoneEvent(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhoneEvent implements PhoneEvent {
  const _$PhoneEvent({required this.value, this.countryCode});

  @override
  final String? value;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'AuthEvent.changePohone(value: $value, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneEvent &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneEventCopyWith<_$PhoneEvent> get copyWith =>
      __$$PhoneEventCopyWithImpl<_$PhoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) {
    return changePohone(value, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) {
    return changePohone?.call(value, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) {
    if (changePohone != null) {
      return changePohone(value, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) {
    return changePohone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) {
    return changePohone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (changePohone != null) {
      return changePohone(this);
    }
    return orElse();
  }
}

abstract class PhoneEvent implements AuthEvent {
  const factory PhoneEvent(
      {required final String? value, final String? countryCode}) = _$PhoneEvent;

  String? get value;
  String? get countryCode;
  @JsonKey(ignore: true)
  _$$PhoneEventCopyWith<_$PhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestOrResendPhoneOtpEventCopyWith<$Res> {
  factory _$$RequestOrResendPhoneOtpEventCopyWith(
          _$RequestOrResendPhoneOtpEvent value,
          $Res Function(_$RequestOrResendPhoneOtpEvent) then) =
      __$$RequestOrResendPhoneOtpEventCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpRequestOrResendType? otpRequestOrResendTypeEnum});
}

/// @nodoc
class __$$RequestOrResendPhoneOtpEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestOrResendPhoneOtpEvent>
    implements _$$RequestOrResendPhoneOtpEventCopyWith<$Res> {
  __$$RequestOrResendPhoneOtpEventCopyWithImpl(
      _$RequestOrResendPhoneOtpEvent _value,
      $Res Function(_$RequestOrResendPhoneOtpEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpRequestOrResendTypeEnum = freezed,
  }) {
    return _then(_$RequestOrResendPhoneOtpEvent(
      otpRequestOrResendTypeEnum: freezed == otpRequestOrResendTypeEnum
          ? _value.otpRequestOrResendTypeEnum
          : otpRequestOrResendTypeEnum // ignore: cast_nullable_to_non_nullable
              as OtpRequestOrResendType?,
    ));
  }
}

/// @nodoc

class _$RequestOrResendPhoneOtpEvent implements RequestOrResendPhoneOtpEvent {
  const _$RequestOrResendPhoneOtpEvent(
      {required this.otpRequestOrResendTypeEnum});

  @override
  final OtpRequestOrResendType? otpRequestOrResendTypeEnum;

  @override
  String toString() {
    return 'AuthEvent.verifyOrrequestOrResendPhoneOtp(otpRequestOrResendTypeEnum: $otpRequestOrResendTypeEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrResendPhoneOtpEvent &&
            (identical(other.otpRequestOrResendTypeEnum,
                    otpRequestOrResendTypeEnum) ||
                other.otpRequestOrResendTypeEnum ==
                    otpRequestOrResendTypeEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpRequestOrResendTypeEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrResendPhoneOtpEventCopyWith<_$RequestOrResendPhoneOtpEvent>
      get copyWith => __$$RequestOrResendPhoneOtpEventCopyWithImpl<
          _$RequestOrResendPhoneOtpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) {
    return verifyOrrequestOrResendPhoneOtp(otpRequestOrResendTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) {
    return verifyOrrequestOrResendPhoneOtp?.call(otpRequestOrResendTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) {
    if (verifyOrrequestOrResendPhoneOtp != null) {
      return verifyOrrequestOrResendPhoneOtp(otpRequestOrResendTypeEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) {
    return verifyOrrequestOrResendPhoneOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) {
    return verifyOrrequestOrResendPhoneOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (verifyOrrequestOrResendPhoneOtp != null) {
      return verifyOrrequestOrResendPhoneOtp(this);
    }
    return orElse();
  }
}

abstract class RequestOrResendPhoneOtpEvent implements AuthEvent {
  const factory RequestOrResendPhoneOtpEvent(
          {required final OtpRequestOrResendType? otpRequestOrResendTypeEnum}) =
      _$RequestOrResendPhoneOtpEvent;

  OtpRequestOrResendType? get otpRequestOrResendTypeEnum;
  @JsonKey(ignore: true)
  _$$RequestOrResendPhoneOtpEventCopyWith<_$RequestOrResendPhoneOtpEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserProfileEventCopyWith<$Res> {
  factory _$$UpdateUserProfileEventCopyWith(_$UpdateUserProfileEvent value,
          $Res Function(_$UpdateUserProfileEvent) then) =
      __$$UpdateUserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserProfileEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserProfileEvent>
    implements _$$UpdateUserProfileEventCopyWith<$Res> {
  __$$UpdateUserProfileEventCopyWithImpl(_$UpdateUserProfileEvent _value,
      $Res Function(_$UpdateUserProfileEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserProfileEvent implements UpdateUserProfileEvent {
  const _$UpdateUserProfileEvent();

  @override
  String toString() {
    return 'AuthEvent.updateUserProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) {
    return updateUserProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) {
    return updateUserProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProfileEvent implements AuthEvent {
  const factory UpdateUserProfileEvent() = _$UpdateUserProfileEvent;
}

/// @nodoc
abstract class _$$UpdateUserTypeEventCopyWith<$Res> {
  factory _$$UpdateUserTypeEventCopyWith(_$UpdateUserTypeEvent value,
          $Res Function(_$UpdateUserTypeEvent) then) =
      __$$UpdateUserTypeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserType? userType});
}

/// @nodoc
class __$$UpdateUserTypeEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserTypeEvent>
    implements _$$UpdateUserTypeEventCopyWith<$Res> {
  __$$UpdateUserTypeEventCopyWithImpl(
      _$UpdateUserTypeEvent _value, $Res Function(_$UpdateUserTypeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = freezed,
  }) {
    return _then(_$UpdateUserTypeEvent(
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
    ));
  }
}

/// @nodoc

class _$UpdateUserTypeEvent implements UpdateUserTypeEvent {
  const _$UpdateUserTypeEvent({required this.userType});

  @override
  final UserType? userType;

  @override
  String toString() {
    return 'AuthEvent.updateUserType(userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserTypeEvent &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserTypeEventCopyWith<_$UpdateUserTypeEvent> get copyWith =>
      __$$UpdateUserTypeEventCopyWithImpl<_$UpdateUserTypeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) {
    return updateUserType(userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) {
    return updateUserType?.call(userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) {
    if (updateUserType != null) {
      return updateUserType(userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) {
    return updateUserType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) {
    return updateUserType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (updateUserType != null) {
      return updateUserType(this);
    }
    return orElse();
  }
}

abstract class UpdateUserTypeEvent implements AuthEvent {
  const factory UpdateUserTypeEvent({required final UserType? userType}) =
      _$UpdateUserTypeEvent;

  UserType? get userType;
  @JsonKey(ignore: true)
  _$$UpdateUserTypeEventCopyWith<_$UpdateUserTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPhoneCopyWith<$Res> {
  factory _$$RegisterPhoneCopyWith(
          _$RegisterPhone value, $Res Function(_$RegisterPhone) then) =
      __$$RegisterPhoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPhoneCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterPhone>
    implements _$$RegisterPhoneCopyWith<$Res> {
  __$$RegisterPhoneCopyWithImpl(
      _$RegisterPhone _value, $Res Function(_$RegisterPhone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterPhone implements RegisterPhone {
  const _$RegisterPhone();

  @override
  String toString() {
    return 'AuthEvent.registerPhone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterPhone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) {
    return registerPhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) {
    return registerPhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) {
    if (registerPhone != null) {
      return registerPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) {
    return registerPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) {
    return registerPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (registerPhone != null) {
      return registerPhone(this);
    }
    return orElse();
  }
}

abstract class RegisterPhone implements AuthEvent {
  const factory RegisterPhone() = _$RegisterPhone;
}

/// @nodoc
abstract class _$$LoginEventCopyWith<$Res> {
  factory _$$LoginEventCopyWith(
          _$LoginEvent value, $Res Function(_$LoginEvent) then) =
      __$$LoginEventCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginType? loginType});
}

/// @nodoc
class __$$LoginEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEvent>
    implements _$$LoginEventCopyWith<$Res> {
  __$$LoginEventCopyWithImpl(
      _$LoginEvent _value, $Res Function(_$LoginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginType = freezed,
  }) {
    return _then(_$LoginEvent(
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType?,
    ));
  }
}

/// @nodoc

class _$LoginEvent implements LoginEvent {
  const _$LoginEvent({required this.loginType});

  @override
  final LoginType? loginType;

  @override
  String toString() {
    return 'AuthEvent.login(loginType: $loginType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEvent &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventCopyWith<_$LoginEvent> get copyWith =>
      __$$LoginEventCopyWithImpl<_$LoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value, String? countryCode) changePohone,
    required TResult Function(
            OtpRequestOrResendType? otpRequestOrResendTypeEnum)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function() updateUserProfile,
    required TResult Function(UserType? userType) updateUserType,
    required TResult Function() registerPhone,
    required TResult Function(LoginType? loginType) login,
  }) {
    return login(loginType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value, String? countryCode)? changePohone,
    TResult? Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function()? updateUserProfile,
    TResult? Function(UserType? userType)? updateUserType,
    TResult? Function()? registerPhone,
    TResult? Function(LoginType? loginType)? login,
  }) {
    return login?.call(loginType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value, String? countryCode)? changePohone,
    TResult Function(OtpRequestOrResendType? otpRequestOrResendTypeEnum)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function()? updateUserProfile,
    TResult Function(UserType? userType)? updateUserType,
    TResult Function()? registerPhone,
    TResult Function(LoginType? loginType)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RequestOrResendPhoneOtpEvent value)
        verifyOrrequestOrResendPhoneOtp,
    required TResult Function(UpdateUserProfileEvent value) updateUserProfile,
    required TResult Function(UpdateUserTypeEvent value) updateUserType,
    required TResult Function(RegisterPhone value) registerPhone,
    required TResult Function(LoginEvent value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult? Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult? Function(UpdateUserTypeEvent value)? updateUserType,
    TResult? Function(RegisterPhone value)? registerPhone,
    TResult? Function(LoginEvent value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RequestOrResendPhoneOtpEvent value)?
        verifyOrrequestOrResendPhoneOtp,
    TResult Function(UpdateUserProfileEvent value)? updateUserProfile,
    TResult Function(UpdateUserTypeEvent value)? updateUserType,
    TResult Function(RegisterPhone value)? registerPhone,
    TResult Function(LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent({required final LoginType? loginType}) =
      _$LoginEvent;

  LoginType? get loginType;
  @JsonKey(ignore: true)
  _$$LoginEventCopyWith<_$LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
