// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_vendor_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateVendorResponseModel _$CreateVendorResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateVendorResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateVendorResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateVendorResponseModelData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateVendorResponseModelCopyWith<CreateVendorResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVendorResponseModelCopyWith<$Res> {
  factory $CreateVendorResponseModelCopyWith(CreateVendorResponseModel value,
          $Res Function(CreateVendorResponseModel) then) =
      _$CreateVendorResponseModelCopyWithImpl<$Res, CreateVendorResponseModel>;
  @useResult
  $Res call(
      {String? status, String? message, CreateVendorResponseModelData? data});

  $CreateVendorResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateVendorResponseModelCopyWithImpl<$Res,
        $Val extends CreateVendorResponseModel>
    implements $CreateVendorResponseModelCopyWith<$Res> {
  _$CreateVendorResponseModelCopyWithImpl(this._value, this._then);

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
              as CreateVendorResponseModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateVendorResponseModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateVendorResponseModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateVendorResponseModelCopyWith<$Res>
    implements $CreateVendorResponseModelCopyWith<$Res> {
  factory _$$_CreateVendorResponseModelCopyWith(
          _$_CreateVendorResponseModel value,
          $Res Function(_$_CreateVendorResponseModel) then) =
      __$$_CreateVendorResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, String? message, CreateVendorResponseModelData? data});

  @override
  $CreateVendorResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreateVendorResponseModelCopyWithImpl<$Res>
    extends _$CreateVendorResponseModelCopyWithImpl<$Res,
        _$_CreateVendorResponseModel>
    implements _$$_CreateVendorResponseModelCopyWith<$Res> {
  __$$_CreateVendorResponseModelCopyWithImpl(
      _$_CreateVendorResponseModel _value,
      $Res Function(_$_CreateVendorResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CreateVendorResponseModel(
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
              as CreateVendorResponseModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateVendorResponseModel implements _CreateVendorResponseModel {
  const _$_CreateVendorResponseModel({this.status, this.message, this.data});

  factory _$_CreateVendorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateVendorResponseModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final CreateVendorResponseModelData? data;

  @override
  String toString() {
    return 'CreateVendorResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateVendorResponseModel &&
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
  _$$_CreateVendorResponseModelCopyWith<_$_CreateVendorResponseModel>
      get copyWith => __$$_CreateVendorResponseModelCopyWithImpl<
          _$_CreateVendorResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateVendorResponseModelToJson(
      this,
    );
  }
}

abstract class _CreateVendorResponseModel implements CreateVendorResponseModel {
  const factory _CreateVendorResponseModel(
          {final String? status,
          final String? message,
          final CreateVendorResponseModelData? data}) =
      _$_CreateVendorResponseModel;

  factory _CreateVendorResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CreateVendorResponseModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  CreateVendorResponseModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CreateVendorResponseModelCopyWith<_$_CreateVendorResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

CreateVendorResponseModelData _$CreateVendorResponseModelDataFromJson(
    Map<String, dynamic> json) {
  return _CreateVendorResponseModelData.fromJson(json);
}

/// @nodoc
mixin _$CreateVendorResponseModelData {
  bool? get success => throw _privateConstructorUsedError;
  Vendor? get vendor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateVendorResponseModelDataCopyWith<CreateVendorResponseModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVendorResponseModelDataCopyWith<$Res> {
  factory $CreateVendorResponseModelDataCopyWith(
          CreateVendorResponseModelData value,
          $Res Function(CreateVendorResponseModelData) then) =
      _$CreateVendorResponseModelDataCopyWithImpl<$Res,
          CreateVendorResponseModelData>;
  @useResult
  $Res call({bool? success, Vendor? vendor});

  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class _$CreateVendorResponseModelDataCopyWithImpl<$Res,
        $Val extends CreateVendorResponseModelData>
    implements $CreateVendorResponseModelDataCopyWith<$Res> {
  _$CreateVendorResponseModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateVendorResponseModelDataCopyWith<$Res>
    implements $CreateVendorResponseModelDataCopyWith<$Res> {
  factory _$$_CreateVendorResponseModelDataCopyWith(
          _$_CreateVendorResponseModelData value,
          $Res Function(_$_CreateVendorResponseModelData) then) =
      __$$_CreateVendorResponseModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, Vendor? vendor});

  @override
  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class __$$_CreateVendorResponseModelDataCopyWithImpl<$Res>
    extends _$CreateVendorResponseModelDataCopyWithImpl<$Res,
        _$_CreateVendorResponseModelData>
    implements _$$_CreateVendorResponseModelDataCopyWith<$Res> {
  __$$_CreateVendorResponseModelDataCopyWithImpl(
      _$_CreateVendorResponseModelData _value,
      $Res Function(_$_CreateVendorResponseModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$_CreateVendorResponseModelData(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateVendorResponseModelData
    implements _CreateVendorResponseModelData {
  const _$_CreateVendorResponseModelData({this.success, this.vendor});

  factory _$_CreateVendorResponseModelData.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateVendorResponseModelDataFromJson(json);

  @override
  final bool? success;
  @override
  final Vendor? vendor;

  @override
  String toString() {
    return 'CreateVendorResponseModelData(success: $success, vendor: $vendor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateVendorResponseModelData &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, vendor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateVendorResponseModelDataCopyWith<_$_CreateVendorResponseModelData>
      get copyWith => __$$_CreateVendorResponseModelDataCopyWithImpl<
          _$_CreateVendorResponseModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateVendorResponseModelDataToJson(
      this,
    );
  }
}

abstract class _CreateVendorResponseModelData
    implements CreateVendorResponseModelData {
  const factory _CreateVendorResponseModelData(
      {final bool? success,
      final Vendor? vendor}) = _$_CreateVendorResponseModelData;

  factory _CreateVendorResponseModelData.fromJson(Map<String, dynamic> json) =
      _$_CreateVendorResponseModelData.fromJson;

  @override
  bool? get success;
  @override
  Vendor? get vendor;
  @override
  @JsonKey(ignore: true)
  _$$_CreateVendorResponseModelDataCopyWith<_$_CreateVendorResponseModelData>
      get copyWith => throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String? get businessName => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  List<PickupAddress>? get pickupAddresses =>
      throw _privateConstructorUsedError;
  List<dynamic>? get operatingDays => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {String? businessName,
      String? category,
      String? country,
      List<PickupAddress>? pickupAddresses,
      List<dynamic>? operatingDays,
      String? user,
      String? id,
      int? v});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = freezed,
    Object? category = freezed,
    Object? country = freezed,
    Object? pickupAddresses = freezed,
    Object? operatingDays = freezed,
    Object? user = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddresses: freezed == pickupAddresses
          ? _value.pickupAddresses
          : pickupAddresses // ignore: cast_nullable_to_non_nullable
              as List<PickupAddress>?,
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
}

/// @nodoc
abstract class _$$_VendorCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$_VendorCopyWith(_$_Vendor value, $Res Function(_$_Vendor) then) =
      __$$_VendorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? businessName,
      String? category,
      String? country,
      List<PickupAddress>? pickupAddresses,
      List<dynamic>? operatingDays,
      String? user,
      String? id,
      int? v});
}

/// @nodoc
class __$$_VendorCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$_Vendor>
    implements _$$_VendorCopyWith<$Res> {
  __$$_VendorCopyWithImpl(_$_Vendor _value, $Res Function(_$_Vendor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = freezed,
    Object? category = freezed,
    Object? country = freezed,
    Object? pickupAddresses = freezed,
    Object? operatingDays = freezed,
    Object? user = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_Vendor(
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddresses: freezed == pickupAddresses
          ? _value._pickupAddresses
          : pickupAddresses // ignore: cast_nullable_to_non_nullable
              as List<PickupAddress>?,
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
class _$_Vendor implements _Vendor {
  const _$_Vendor(
      {this.businessName,
      this.category,
      this.country,
      final List<PickupAddress>? pickupAddresses,
      final List<dynamic>? operatingDays,
      this.user,
      this.id,
      this.v})
      : _pickupAddresses = pickupAddresses,
        _operatingDays = operatingDays;

  factory _$_Vendor.fromJson(Map<String, dynamic> json) =>
      _$$_VendorFromJson(json);

  @override
  final String? businessName;
  @override
  final String? category;
  @override
  final String? country;
  final List<PickupAddress>? _pickupAddresses;
  @override
  List<PickupAddress>? get pickupAddresses {
    final value = _pickupAddresses;
    if (value == null) return null;
    if (_pickupAddresses is EqualUnmodifiableListView) return _pickupAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final String? id;
  @override
  final int? v;

  @override
  String toString() {
    return 'Vendor(businessName: $businessName, category: $category, country: $country, pickupAddresses: $pickupAddresses, operatingDays: $operatingDays, user: $user, id: $id, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vendor &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality()
                .equals(other._pickupAddresses, _pickupAddresses) &&
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
      businessName,
      category,
      country,
      const DeepCollectionEquality().hash(_pickupAddresses),
      const DeepCollectionEquality().hash(_operatingDays),
      user,
      id,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendorCopyWith<_$_Vendor> get copyWith =>
      __$$_VendorCopyWithImpl<_$_Vendor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  const factory _Vendor(
      {final String? businessName,
      final String? category,
      final String? country,
      final List<PickupAddress>? pickupAddresses,
      final List<dynamic>? operatingDays,
      final String? user,
      final String? id,
      final int? v}) = _$_Vendor;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$_Vendor.fromJson;

  @override
  String? get businessName;
  @override
  String? get category;
  @override
  String? get country;
  @override
  List<PickupAddress>? get pickupAddresses;
  @override
  List<dynamic>? get operatingDays;
  @override
  String? get user;
  @override
  String? get id;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_VendorCopyWith<_$_Vendor> get copyWith =>
      throw _privateConstructorUsedError;
}

PickupAddress _$PickupAddressFromJson(Map<String, dynamic> json) {
  return _PickupAddress.fromJson(json);
}

/// @nodoc
mixin _$PickupAddress {
  String? get address => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupAddressCopyWith<PickupAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupAddressCopyWith<$Res> {
  factory $PickupAddressCopyWith(
          PickupAddress value, $Res Function(PickupAddress) then) =
      _$PickupAddressCopyWithImpl<$Res, PickupAddress>;
  @useResult
  $Res call({String? address, String? landmark, String? id});
}

/// @nodoc
class _$PickupAddressCopyWithImpl<$Res, $Val extends PickupAddress>
    implements $PickupAddressCopyWith<$Res> {
  _$PickupAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? landmark = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickupAddressCopyWith<$Res>
    implements $PickupAddressCopyWith<$Res> {
  factory _$$_PickupAddressCopyWith(
          _$_PickupAddress value, $Res Function(_$_PickupAddress) then) =
      __$$_PickupAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, String? landmark, String? id});
}

/// @nodoc
class __$$_PickupAddressCopyWithImpl<$Res>
    extends _$PickupAddressCopyWithImpl<$Res, _$_PickupAddress>
    implements _$$_PickupAddressCopyWith<$Res> {
  __$$_PickupAddressCopyWithImpl(
      _$_PickupAddress _value, $Res Function(_$_PickupAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? landmark = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_PickupAddress(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PickupAddress implements _PickupAddress {
  const _$_PickupAddress({this.address, this.landmark, this.id});

  factory _$_PickupAddress.fromJson(Map<String, dynamic> json) =>
      _$$_PickupAddressFromJson(json);

  @override
  final String? address;
  @override
  final String? landmark;
  @override
  final String? id;

  @override
  String toString() {
    return 'PickupAddress(address: $address, landmark: $landmark, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickupAddress &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, landmark, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickupAddressCopyWith<_$_PickupAddress> get copyWith =>
      __$$_PickupAddressCopyWithImpl<_$_PickupAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickupAddressToJson(
      this,
    );
  }
}

abstract class _PickupAddress implements PickupAddress {
  const factory _PickupAddress(
      {final String? address,
      final String? landmark,
      final String? id}) = _$_PickupAddress;

  factory _PickupAddress.fromJson(Map<String, dynamic> json) =
      _$_PickupAddress.fromJson;

  @override
  String? get address;
  @override
  String? get landmark;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PickupAddressCopyWith<_$_PickupAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
