// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  Name get otpVal => throw _privateConstructorUsedError;
  String get exceptionError => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  FormzStatus get loginStatus => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  RegisterModel? get registerModel => throw _privateConstructorUsedError;
  UserData? get userPhoneOnboardingModel => throw _privateConstructorUsedError;
  LoginType? get loginType => throw _privateConstructorUsedError;
  OtpRequestOrResendType? get otpRequestOrResendTypeEnum =>
      throw _privateConstructorUsedError;
  UserType? get userTypeEnum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Name otpVal,
      String exceptionError,
      String countryCode,
      FormzStatus loginStatus,
      Email email,
      Password password,
      PhoneNumber phoneNumber,
      RegisterModel? registerModel,
      UserData? userPhoneOnboardingModel,
      LoginType? loginType,
      OtpRequestOrResendType? otpRequestOrResendTypeEnum,
      UserType? userTypeEnum});

  $RegisterModelCopyWith<$Res>? get registerModel;
  $UserDataCopyWith<$Res>? get userPhoneOnboardingModel;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVal = null,
    Object? exceptionError = null,
    Object? countryCode = null,
    Object? loginStatus = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? registerModel = freezed,
    Object? userPhoneOnboardingModel = freezed,
    Object? loginType = freezed,
    Object? otpRequestOrResendTypeEnum = freezed,
    Object? userTypeEnum = freezed,
  }) {
    return _then(_value.copyWith(
      otpVal: null == otpVal
          ? _value.otpVal
          : otpVal // ignore: cast_nullable_to_non_nullable
              as Name,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      registerModel: freezed == registerModel
          ? _value.registerModel
          : registerModel // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
      userPhoneOnboardingModel: freezed == userPhoneOnboardingModel
          ? _value.userPhoneOnboardingModel
          : userPhoneOnboardingModel // ignore: cast_nullable_to_non_nullable
              as UserData?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType?,
      otpRequestOrResendTypeEnum: freezed == otpRequestOrResendTypeEnum
          ? _value.otpRequestOrResendTypeEnum
          : otpRequestOrResendTypeEnum // ignore: cast_nullable_to_non_nullable
              as OtpRequestOrResendType?,
      userTypeEnum: freezed == userTypeEnum
          ? _value.userTypeEnum
          : userTypeEnum // ignore: cast_nullable_to_non_nullable
              as UserType?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterModelCopyWith<$Res>? get registerModel {
    if (_value.registerModel == null) {
      return null;
    }

    return $RegisterModelCopyWith<$Res>(_value.registerModel!, (value) {
      return _then(_value.copyWith(registerModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get userPhoneOnboardingModel {
    if (_value.userPhoneOnboardingModel == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.userPhoneOnboardingModel!, (value) {
      return _then(_value.copyWith(userPhoneOnboardingModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name otpVal,
      String exceptionError,
      String countryCode,
      FormzStatus loginStatus,
      Email email,
      Password password,
      PhoneNumber phoneNumber,
      RegisterModel? registerModel,
      UserData? userPhoneOnboardingModel,
      LoginType? loginType,
      OtpRequestOrResendType? otpRequestOrResendTypeEnum,
      UserType? userTypeEnum});

  @override
  $RegisterModelCopyWith<$Res>? get registerModel;
  @override
  $UserDataCopyWith<$Res>? get userPhoneOnboardingModel;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVal = null,
    Object? exceptionError = null,
    Object? countryCode = null,
    Object? loginStatus = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? registerModel = freezed,
    Object? userPhoneOnboardingModel = freezed,
    Object? loginType = freezed,
    Object? otpRequestOrResendTypeEnum = freezed,
    Object? userTypeEnum = freezed,
  }) {
    return _then(_$_LoginState(
      otpVal: null == otpVal
          ? _value.otpVal
          : otpVal // ignore: cast_nullable_to_non_nullable
              as Name,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      registerModel: freezed == registerModel
          ? _value.registerModel
          : registerModel // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
      userPhoneOnboardingModel: freezed == userPhoneOnboardingModel
          ? _value.userPhoneOnboardingModel
          : userPhoneOnboardingModel // ignore: cast_nullable_to_non_nullable
              as UserData?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType?,
      otpRequestOrResendTypeEnum: freezed == otpRequestOrResendTypeEnum
          ? _value.otpRequestOrResendTypeEnum
          : otpRequestOrResendTypeEnum // ignore: cast_nullable_to_non_nullable
              as OtpRequestOrResendType?,
      userTypeEnum: freezed == userTypeEnum
          ? _value.userTypeEnum
          : userTypeEnum // ignore: cast_nullable_to_non_nullable
              as UserType?,
    ));
  }
}

/// @nodoc

class _$_LoginState extends _LoginState {
  _$_LoginState(
      {this.otpVal = const Name.pure(),
      this.exceptionError = '',
      this.countryCode = '',
      this.loginStatus = FormzStatus.pure,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.phoneNumber = const PhoneNumber.pure(),
      this.registerModel,
      this.userPhoneOnboardingModel,
      this.loginType,
      this.otpRequestOrResendTypeEnum,
      this.userTypeEnum})
      : super._();

  @override
  @JsonKey()
  final Name otpVal;
  @override
  @JsonKey()
  final String exceptionError;
  @override
  @JsonKey()
  final String countryCode;
  @override
  @JsonKey()
  final FormzStatus loginStatus;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  final RegisterModel? registerModel;
  @override
  final UserData? userPhoneOnboardingModel;
  @override
  final LoginType? loginType;
  @override
  final OtpRequestOrResendType? otpRequestOrResendTypeEnum;
  @override
  final UserType? userTypeEnum;

  @override
  String toString() {
    return 'LoginState(otpVal: $otpVal, exceptionError: $exceptionError, countryCode: $countryCode, loginStatus: $loginStatus, email: $email, password: $password, phoneNumber: $phoneNumber, registerModel: $registerModel, userPhoneOnboardingModel: $userPhoneOnboardingModel, loginType: $loginType, otpRequestOrResendTypeEnum: $otpRequestOrResendTypeEnum, userTypeEnum: $userTypeEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.otpVal, otpVal) || other.otpVal == otpVal) &&
            (identical(other.exceptionError, exceptionError) ||
                other.exceptionError == exceptionError) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.registerModel, registerModel) ||
                other.registerModel == registerModel) &&
            (identical(
                    other.userPhoneOnboardingModel, userPhoneOnboardingModel) ||
                other.userPhoneOnboardingModel == userPhoneOnboardingModel) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.otpRequestOrResendTypeEnum,
                    otpRequestOrResendTypeEnum) ||
                other.otpRequestOrResendTypeEnum ==
                    otpRequestOrResendTypeEnum) &&
            (identical(other.userTypeEnum, userTypeEnum) ||
                other.userTypeEnum == userTypeEnum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      otpVal,
      exceptionError,
      countryCode,
      loginStatus,
      email,
      password,
      phoneNumber,
      registerModel,
      userPhoneOnboardingModel,
      loginType,
      otpRequestOrResendTypeEnum,
      userTypeEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  factory _LoginState(
      {final Name otpVal,
      final String exceptionError,
      final String countryCode,
      final FormzStatus loginStatus,
      final Email email,
      final Password password,
      final PhoneNumber phoneNumber,
      final RegisterModel? registerModel,
      final UserData? userPhoneOnboardingModel,
      final LoginType? loginType,
      final OtpRequestOrResendType? otpRequestOrResendTypeEnum,
      final UserType? userTypeEnum}) = _$_LoginState;
  _LoginState._() : super._();

  @override
  Name get otpVal;
  @override
  String get exceptionError;
  @override
  String get countryCode;
  @override
  FormzStatus get loginStatus;
  @override
  Email get email;
  @override
  Password get password;
  @override
  PhoneNumber get phoneNumber;
  @override
  RegisterModel? get registerModel;
  @override
  UserData? get userPhoneOnboardingModel;
  @override
  LoginType? get loginType;
  @override
  OtpRequestOrResendType? get otpRequestOrResendTypeEnum;
  @override
  UserType? get userTypeEnum;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
