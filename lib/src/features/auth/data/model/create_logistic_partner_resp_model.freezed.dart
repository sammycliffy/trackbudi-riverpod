// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_logistic_partner_resp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateLogisticPartnerRespModel _$CreateLogisticPartnerRespModelFromJson(
    Map<String, dynamic> json) {
  return _CreateLogisticPartnerRespModel.fromJson(json);
}

/// @nodoc
mixin _$CreateLogisticPartnerRespModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateLogisticPartnerRespModelData? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLogisticPartnerRespModelCopyWith<CreateLogisticPartnerRespModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLogisticPartnerRespModelCopyWith<$Res> {
  factory $CreateLogisticPartnerRespModelCopyWith(
          CreateLogisticPartnerRespModel value,
          $Res Function(CreateLogisticPartnerRespModel) then) =
      _$CreateLogisticPartnerRespModelCopyWithImpl<$Res,
          CreateLogisticPartnerRespModel>;
  @useResult
  $Res call(
      {String? status,
      String? message,
      CreateLogisticPartnerRespModelData? data});

  $CreateLogisticPartnerRespModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateLogisticPartnerRespModelCopyWithImpl<$Res,
        $Val extends CreateLogisticPartnerRespModel>
    implements $CreateLogisticPartnerRespModelCopyWith<$Res> {
  _$CreateLogisticPartnerRespModelCopyWithImpl(this._value, this._then);

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
              as CreateLogisticPartnerRespModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateLogisticPartnerRespModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateLogisticPartnerRespModelDataCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateLogisticPartnerRespModelCopyWith<$Res>
    implements $CreateLogisticPartnerRespModelCopyWith<$Res> {
  factory _$$_CreateLogisticPartnerRespModelCopyWith(
          _$_CreateLogisticPartnerRespModel value,
          $Res Function(_$_CreateLogisticPartnerRespModel) then) =
      __$$_CreateLogisticPartnerRespModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? message,
      CreateLogisticPartnerRespModelData? data});

  @override
  $CreateLogisticPartnerRespModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreateLogisticPartnerRespModelCopyWithImpl<$Res>
    extends _$CreateLogisticPartnerRespModelCopyWithImpl<$Res,
        _$_CreateLogisticPartnerRespModel>
    implements _$$_CreateLogisticPartnerRespModelCopyWith<$Res> {
  __$$_CreateLogisticPartnerRespModelCopyWithImpl(
      _$_CreateLogisticPartnerRespModel _value,
      $Res Function(_$_CreateLogisticPartnerRespModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CreateLogisticPartnerRespModel(
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
              as CreateLogisticPartnerRespModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateLogisticPartnerRespModel
    implements _CreateLogisticPartnerRespModel {
  const _$_CreateLogisticPartnerRespModel(
      {this.status, this.message, this.data});

  factory _$_CreateLogisticPartnerRespModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateLogisticPartnerRespModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final CreateLogisticPartnerRespModelData? data;

  @override
  String toString() {
    return 'CreateLogisticPartnerRespModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateLogisticPartnerRespModel &&
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
  _$$_CreateLogisticPartnerRespModelCopyWith<_$_CreateLogisticPartnerRespModel>
      get copyWith => __$$_CreateLogisticPartnerRespModelCopyWithImpl<
          _$_CreateLogisticPartnerRespModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateLogisticPartnerRespModelToJson(
      this,
    );
  }
}

abstract class _CreateLogisticPartnerRespModel
    implements CreateLogisticPartnerRespModel {
  const factory _CreateLogisticPartnerRespModel(
          {final String? status,
          final String? message,
          final CreateLogisticPartnerRespModelData? data}) =
      _$_CreateLogisticPartnerRespModel;

  factory _CreateLogisticPartnerRespModel.fromJson(Map<String, dynamic> json) =
      _$_CreateLogisticPartnerRespModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  CreateLogisticPartnerRespModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CreateLogisticPartnerRespModelCopyWith<_$_CreateLogisticPartnerRespModel>
      get copyWith => throw _privateConstructorUsedError;
}

CreateLogisticPartnerRespModelData _$CreateLogisticPartnerRespModelDataFromJson(
    Map<String, dynamic> json) {
  return _CreateLogisticPartnerRespModelData.fromJson(json);
}

/// @nodoc
mixin _$CreateLogisticPartnerRespModelData {
  bool? get success => throw _privateConstructorUsedError;
  LogisticsPartner? get logisticsPartner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLogisticPartnerRespModelDataCopyWith<
          CreateLogisticPartnerRespModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLogisticPartnerRespModelDataCopyWith<$Res> {
  factory $CreateLogisticPartnerRespModelDataCopyWith(
          CreateLogisticPartnerRespModelData value,
          $Res Function(CreateLogisticPartnerRespModelData) then) =
      _$CreateLogisticPartnerRespModelDataCopyWithImpl<$Res,
          CreateLogisticPartnerRespModelData>;
  @useResult
  $Res call({bool? success, LogisticsPartner? logisticsPartner});

  $LogisticsPartnerCopyWith<$Res>? get logisticsPartner;
}

/// @nodoc
class _$CreateLogisticPartnerRespModelDataCopyWithImpl<$Res,
        $Val extends CreateLogisticPartnerRespModelData>
    implements $CreateLogisticPartnerRespModelDataCopyWith<$Res> {
  _$CreateLogisticPartnerRespModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? logisticsPartner = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      logisticsPartner: freezed == logisticsPartner
          ? _value.logisticsPartner
          : logisticsPartner // ignore: cast_nullable_to_non_nullable
              as LogisticsPartner?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogisticsPartnerCopyWith<$Res>? get logisticsPartner {
    if (_value.logisticsPartner == null) {
      return null;
    }

    return $LogisticsPartnerCopyWith<$Res>(_value.logisticsPartner!, (value) {
      return _then(_value.copyWith(logisticsPartner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateLogisticPartnerRespModelDataCopyWith<$Res>
    implements $CreateLogisticPartnerRespModelDataCopyWith<$Res> {
  factory _$$_CreateLogisticPartnerRespModelDataCopyWith(
          _$_CreateLogisticPartnerRespModelData value,
          $Res Function(_$_CreateLogisticPartnerRespModelData) then) =
      __$$_CreateLogisticPartnerRespModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, LogisticsPartner? logisticsPartner});

  @override
  $LogisticsPartnerCopyWith<$Res>? get logisticsPartner;
}

/// @nodoc
class __$$_CreateLogisticPartnerRespModelDataCopyWithImpl<$Res>
    extends _$CreateLogisticPartnerRespModelDataCopyWithImpl<$Res,
        _$_CreateLogisticPartnerRespModelData>
    implements _$$_CreateLogisticPartnerRespModelDataCopyWith<$Res> {
  __$$_CreateLogisticPartnerRespModelDataCopyWithImpl(
      _$_CreateLogisticPartnerRespModelData _value,
      $Res Function(_$_CreateLogisticPartnerRespModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? logisticsPartner = freezed,
  }) {
    return _then(_$_CreateLogisticPartnerRespModelData(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      logisticsPartner: freezed == logisticsPartner
          ? _value.logisticsPartner
          : logisticsPartner // ignore: cast_nullable_to_non_nullable
              as LogisticsPartner?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateLogisticPartnerRespModelData
    implements _CreateLogisticPartnerRespModelData {
  const _$_CreateLogisticPartnerRespModelData(
      {this.success, this.logisticsPartner});

  factory _$_CreateLogisticPartnerRespModelData.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateLogisticPartnerRespModelDataFromJson(json);

  @override
  final bool? success;
  @override
  final LogisticsPartner? logisticsPartner;

  @override
  String toString() {
    return 'CreateLogisticPartnerRespModelData(success: $success, logisticsPartner: $logisticsPartner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateLogisticPartnerRespModelData &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.logisticsPartner, logisticsPartner) ||
                other.logisticsPartner == logisticsPartner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, logisticsPartner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateLogisticPartnerRespModelDataCopyWith<
          _$_CreateLogisticPartnerRespModelData>
      get copyWith => __$$_CreateLogisticPartnerRespModelDataCopyWithImpl<
          _$_CreateLogisticPartnerRespModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateLogisticPartnerRespModelDataToJson(
      this,
    );
  }
}

abstract class _CreateLogisticPartnerRespModelData
    implements CreateLogisticPartnerRespModelData {
  const factory _CreateLogisticPartnerRespModelData(
          {final bool? success, final LogisticsPartner? logisticsPartner}) =
      _$_CreateLogisticPartnerRespModelData;

  factory _CreateLogisticPartnerRespModelData.fromJson(
          Map<String, dynamic> json) =
      _$_CreateLogisticPartnerRespModelData.fromJson;

  @override
  bool? get success;
  @override
  LogisticsPartner? get logisticsPartner;
  @override
  @JsonKey(ignore: true)
  _$$_CreateLogisticPartnerRespModelDataCopyWith<
          _$_CreateLogisticPartnerRespModelData>
      get copyWith => throw _privateConstructorUsedError;
}

LogisticsPartner _$LogisticsPartnerFromJson(Map<String, dynamic> json) {
  return _LogisticsPartner.fromJson(json);
}

/// @nodoc
mixin _$LogisticsPartner {
  String? get companyName => throw _privateConstructorUsedError;
  Logo? get logo => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  List<VehicleType>? get vehicleTypes => throw _privateConstructorUsedError;
  List<String>? get goodsType => throw _privateConstructorUsedError;
  String? get deliveriesPerMonth => throw _privateConstructorUsedError;
  String? get howDidYouHear => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  bool? get cacRegistered => throw _privateConstructorUsedError;
  bool? get nipostLicensed => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  List<dynamic>? get operatingDays => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_v')
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogisticsPartnerCopyWith<LogisticsPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogisticsPartnerCopyWith<$Res> {
  factory $LogisticsPartnerCopyWith(
          LogisticsPartner value, $Res Function(LogisticsPartner) then) =
      _$LogisticsPartnerCopyWithImpl<$Res, LogisticsPartner>;
  @useResult
  $Res call(
      {String? companyName,
      Logo? logo,
      String? country,
      String? address,
      String? landmark,
      String? website,
      List<VehicleType>? vehicleTypes,
      List<String>? goodsType,
      String? deliveriesPerMonth,
      String? howDidYouHear,
      String? referralCode,
      bool? cacRegistered,
      bool? nipostLicensed,
      bool? isVerified,
      List<dynamic>? operatingDays,
      String? user,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: '_v') int? v});

  $LogoCopyWith<$Res>? get logo;
}

/// @nodoc
class _$LogisticsPartnerCopyWithImpl<$Res, $Val extends LogisticsPartner>
    implements $LogisticsPartnerCopyWith<$Res> {
  _$LogisticsPartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? logo = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? landmark = freezed,
    Object? website = freezed,
    Object? vehicleTypes = freezed,
    Object? goodsType = freezed,
    Object? deliveriesPerMonth = freezed,
    Object? howDidYouHear = freezed,
    Object? referralCode = freezed,
    Object? cacRegistered = freezed,
    Object? nipostLicensed = freezed,
    Object? isVerified = freezed,
    Object? operatingDays = freezed,
    Object? user = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleTypes: freezed == vehicleTypes
          ? _value.vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<VehicleType>?,
      goodsType: freezed == goodsType
          ? _value.goodsType
          : goodsType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deliveriesPerMonth: freezed == deliveriesPerMonth
          ? _value.deliveriesPerMonth
          : deliveriesPerMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      howDidYouHear: freezed == howDidYouHear
          ? _value.howDidYouHear
          : howDidYouHear // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cacRegistered: freezed == cacRegistered
          ? _value.cacRegistered
          : cacRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      nipostLicensed: freezed == nipostLicensed
          ? _value.nipostLicensed
          : nipostLicensed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      operatingDays: freezed == operatingDays
          ? _value.operatingDays
          : operatingDays // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogoCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $LogoCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogisticsPartnerCopyWith<$Res>
    implements $LogisticsPartnerCopyWith<$Res> {
  factory _$$_LogisticsPartnerCopyWith(
          _$_LogisticsPartner value, $Res Function(_$_LogisticsPartner) then) =
      __$$_LogisticsPartnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? companyName,
      Logo? logo,
      String? country,
      String? address,
      String? landmark,
      String? website,
      List<VehicleType>? vehicleTypes,
      List<String>? goodsType,
      String? deliveriesPerMonth,
      String? howDidYouHear,
      String? referralCode,
      bool? cacRegistered,
      bool? nipostLicensed,
      bool? isVerified,
      List<dynamic>? operatingDays,
      String? user,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: '_v') int? v});

  @override
  $LogoCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$_LogisticsPartnerCopyWithImpl<$Res>
    extends _$LogisticsPartnerCopyWithImpl<$Res, _$_LogisticsPartner>
    implements _$$_LogisticsPartnerCopyWith<$Res> {
  __$$_LogisticsPartnerCopyWithImpl(
      _$_LogisticsPartner _value, $Res Function(_$_LogisticsPartner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? logo = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? landmark = freezed,
    Object? website = freezed,
    Object? vehicleTypes = freezed,
    Object? goodsType = freezed,
    Object? deliveriesPerMonth = freezed,
    Object? howDidYouHear = freezed,
    Object? referralCode = freezed,
    Object? cacRegistered = freezed,
    Object? nipostLicensed = freezed,
    Object? isVerified = freezed,
    Object? operatingDays = freezed,
    Object? user = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_LogisticsPartner(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleTypes: freezed == vehicleTypes
          ? _value._vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<VehicleType>?,
      goodsType: freezed == goodsType
          ? _value._goodsType
          : goodsType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deliveriesPerMonth: freezed == deliveriesPerMonth
          ? _value.deliveriesPerMonth
          : deliveriesPerMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      howDidYouHear: freezed == howDidYouHear
          ? _value.howDidYouHear
          : howDidYouHear // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cacRegistered: freezed == cacRegistered
          ? _value.cacRegistered
          : cacRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      nipostLicensed: freezed == nipostLicensed
          ? _value.nipostLicensed
          : nipostLicensed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      operatingDays: freezed == operatingDays
          ? _value._operatingDays
          : operatingDays // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogisticsPartner implements _LogisticsPartner {
  const _$_LogisticsPartner(
      {this.companyName,
      this.logo,
      this.country,
      this.address,
      this.landmark,
      this.website,
      final List<VehicleType>? vehicleTypes,
      final List<String>? goodsType,
      this.deliveriesPerMonth,
      this.howDidYouHear,
      this.referralCode,
      this.cacRegistered,
      this.nipostLicensed,
      this.isVerified,
      final List<dynamic>? operatingDays,
      this.user,
      @JsonKey(name: '_id') this.id,
      @JsonKey(name: '_v') this.v})
      : _vehicleTypes = vehicleTypes,
        _goodsType = goodsType,
        _operatingDays = operatingDays;

  factory _$_LogisticsPartner.fromJson(Map<String, dynamic> json) =>
      _$$_LogisticsPartnerFromJson(json);

  @override
  final String? companyName;
  @override
  final Logo? logo;
  @override
  final String? country;
  @override
  final String? address;
  @override
  final String? landmark;
  @override
  final String? website;
  final List<VehicleType>? _vehicleTypes;
  @override
  List<VehicleType>? get vehicleTypes {
    final value = _vehicleTypes;
    if (value == null) return null;
    if (_vehicleTypes is EqualUnmodifiableListView) return _vehicleTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _goodsType;
  @override
  List<String>? get goodsType {
    final value = _goodsType;
    if (value == null) return null;
    if (_goodsType is EqualUnmodifiableListView) return _goodsType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? deliveriesPerMonth;
  @override
  final String? howDidYouHear;
  @override
  final String? referralCode;
  @override
  final bool? cacRegistered;
  @override
  final bool? nipostLicensed;
  @override
  final bool? isVerified;
  final List<dynamic>? _operatingDays;
  @override
  List<dynamic>? get operatingDays {
    final value = _operatingDays;
    if (value == null) return null;
    if (_operatingDays is EqualUnmodifiableListView) return _operatingDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? user;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: '_v')
  final int? v;

  @override
  String toString() {
    return 'LogisticsPartner(companyName: $companyName, logo: $logo, country: $country, address: $address, landmark: $landmark, website: $website, vehicleTypes: $vehicleTypes, goodsType: $goodsType, deliveriesPerMonth: $deliveriesPerMonth, howDidYouHear: $howDidYouHear, referralCode: $referralCode, cacRegistered: $cacRegistered, nipostLicensed: $nipostLicensed, isVerified: $isVerified, operatingDays: $operatingDays, user: $user, id: $id, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogisticsPartner &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.website, website) || other.website == website) &&
            const DeepCollectionEquality()
                .equals(other._vehicleTypes, _vehicleTypes) &&
            const DeepCollectionEquality()
                .equals(other._goodsType, _goodsType) &&
            (identical(other.deliveriesPerMonth, deliveriesPerMonth) ||
                other.deliveriesPerMonth == deliveriesPerMonth) &&
            (identical(other.howDidYouHear, howDidYouHear) ||
                other.howDidYouHear == howDidYouHear) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.cacRegistered, cacRegistered) ||
                other.cacRegistered == cacRegistered) &&
            (identical(other.nipostLicensed, nipostLicensed) ||
                other.nipostLicensed == nipostLicensed) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality()
                .equals(other._operatingDays, _operatingDays) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      companyName,
      logo,
      country,
      address,
      landmark,
      website,
      const DeepCollectionEquality().hash(_vehicleTypes),
      const DeepCollectionEquality().hash(_goodsType),
      deliveriesPerMonth,
      howDidYouHear,
      referralCode,
      cacRegistered,
      nipostLicensed,
      isVerified,
      const DeepCollectionEquality().hash(_operatingDays),
      user,
      id,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogisticsPartnerCopyWith<_$_LogisticsPartner> get copyWith =>
      __$$_LogisticsPartnerCopyWithImpl<_$_LogisticsPartner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogisticsPartnerToJson(
      this,
    );
  }
}

abstract class _LogisticsPartner implements LogisticsPartner {
  const factory _LogisticsPartner(
      {final String? companyName,
      final Logo? logo,
      final String? country,
      final String? address,
      final String? landmark,
      final String? website,
      final List<VehicleType>? vehicleTypes,
      final List<String>? goodsType,
      final String? deliveriesPerMonth,
      final String? howDidYouHear,
      final String? referralCode,
      final bool? cacRegistered,
      final bool? nipostLicensed,
      final bool? isVerified,
      final List<dynamic>? operatingDays,
      final String? user,
      @JsonKey(name: '_id') final String? id,
      @JsonKey(name: '_v') final int? v}) = _$_LogisticsPartner;

  factory _LogisticsPartner.fromJson(Map<String, dynamic> json) =
      _$_LogisticsPartner.fromJson;

  @override
  String? get companyName;
  @override
  Logo? get logo;
  @override
  String? get country;
  @override
  String? get address;
  @override
  String? get landmark;
  @override
  String? get website;
  @override
  List<VehicleType>? get vehicleTypes;
  @override
  List<String>? get goodsType;
  @override
  String? get deliveriesPerMonth;
  @override
  String? get howDidYouHear;
  @override
  String? get referralCode;
  @override
  bool? get cacRegistered;
  @override
  bool? get nipostLicensed;
  @override
  bool? get isVerified;
  @override
  List<dynamic>? get operatingDays;
  @override
  String? get user;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: '_v')
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_LogisticsPartnerCopyWith<_$_LogisticsPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

Logo _$LogoFromJson(Map<String, dynamic> json) {
  return _Logo.fromJson(json);
}

/// @nodoc
mixin _$Logo {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoCopyWith<Logo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoCopyWith<$Res> {
  factory $LogoCopyWith(Logo value, $Res Function(Logo) then) =
      _$LogoCopyWithImpl<$Res, Logo>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$LogoCopyWithImpl<$Res, $Val extends Logo>
    implements $LogoCopyWith<$Res> {
  _$LogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogoCopyWith<$Res> implements $LogoCopyWith<$Res> {
  factory _$$_LogoCopyWith(_$_Logo value, $Res Function(_$_Logo) then) =
      __$$_LogoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_LogoCopyWithImpl<$Res> extends _$LogoCopyWithImpl<$Res, _$_Logo>
    implements _$$_LogoCopyWith<$Res> {
  __$$_LogoCopyWithImpl(_$_Logo _value, $Res Function(_$_Logo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Logo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Logo implements _Logo {
  const _$_Logo({@JsonKey(name: '_id') this.id});

  factory _$_Logo.fromJson(Map<String, dynamic> json) => _$$_LogoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Logo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logo &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoCopyWith<_$_Logo> get copyWith =>
      __$$_LogoCopyWithImpl<_$_Logo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoToJson(
      this,
    );
  }
}

abstract class _Logo implements Logo {
  const factory _Logo({@JsonKey(name: '_id') final String? id}) = _$_Logo;

  factory _Logo.fromJson(Map<String, dynamic> json) = _$_Logo.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_LogoCopyWith<_$_Logo> get copyWith => throw _privateConstructorUsedError;
}

VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) {
  return _VehicleType.fromJson(json);
}

/// @nodoc
mixin _$VehicleType {
  String? get vehicle => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleTypeCopyWith<VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeCopyWith<$Res> {
  factory $VehicleTypeCopyWith(
          VehicleType value, $Res Function(VehicleType) then) =
      _$VehicleTypeCopyWithImpl<$Res, VehicleType>;
  @useResult
  $Res call({String? vehicle, int? quantity, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$VehicleTypeCopyWithImpl<$Res, $Val extends VehicleType>
    implements $VehicleTypeCopyWith<$Res> {
  _$VehicleTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = freezed,
    Object? quantity = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleTypeCopyWith<$Res>
    implements $VehicleTypeCopyWith<$Res> {
  factory _$$_VehicleTypeCopyWith(
          _$_VehicleType value, $Res Function(_$_VehicleType) then) =
      __$$_VehicleTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? vehicle, int? quantity, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_VehicleTypeCopyWithImpl<$Res>
    extends _$VehicleTypeCopyWithImpl<$Res, _$_VehicleType>
    implements _$$_VehicleTypeCopyWith<$Res> {
  __$$_VehicleTypeCopyWithImpl(
      _$_VehicleType _value, $Res Function(_$_VehicleType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = freezed,
    Object? quantity = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_VehicleType(
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleType implements _VehicleType {
  const _$_VehicleType(
      {this.vehicle, this.quantity, @JsonKey(name: '_id') this.id});

  factory _$_VehicleType.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleTypeFromJson(json);

  @override
  final String? vehicle;
  @override
  final int? quantity;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'VehicleType(vehicle: $vehicle, quantity: $quantity, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleType &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vehicle, quantity, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleTypeCopyWith<_$_VehicleType> get copyWith =>
      __$$_VehicleTypeCopyWithImpl<_$_VehicleType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleTypeToJson(
      this,
    );
  }
}

abstract class _VehicleType implements VehicleType {
  const factory _VehicleType(
      {final String? vehicle,
      final int? quantity,
      @JsonKey(name: '_id') final String? id}) = _$_VehicleType;

  factory _VehicleType.fromJson(Map<String, dynamic> json) =
      _$_VehicleType.fromJson;

  @override
  String? get vehicle;
  @override
  int? get quantity;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleTypeCopyWith<_$_VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}
