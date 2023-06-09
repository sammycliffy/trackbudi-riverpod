// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_reset_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyResetTokenModel _$VerifyResetTokenModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyResetTokenModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyResetTokenModel {
  String? get status => throw _privateConstructorUsedError;
  VerifyResetTokenModelData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyResetTokenModelCopyWith<VerifyResetTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyResetTokenModelCopyWith<$Res> {
  factory $VerifyResetTokenModelCopyWith(VerifyResetTokenModel value,
          $Res Function(VerifyResetTokenModel) then) =
      _$VerifyResetTokenModelCopyWithImpl<$Res, VerifyResetTokenModel>;
  @useResult
  $Res call({String? status, VerifyResetTokenModelData? data});

  $VerifyResetTokenModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyResetTokenModelCopyWithImpl<$Res,
        $Val extends VerifyResetTokenModel>
    implements $VerifyResetTokenModelCopyWith<$Res> {
  _$VerifyResetTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VerifyResetTokenModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyResetTokenModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifyResetTokenModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VerifyResetTokenModelCopyWith<$Res>
    implements $VerifyResetTokenModelCopyWith<$Res> {
  factory _$$_VerifyResetTokenModelCopyWith(_$_VerifyResetTokenModel value,
          $Res Function(_$_VerifyResetTokenModel) then) =
      __$$_VerifyResetTokenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, VerifyResetTokenModelData? data});

  @override
  $VerifyResetTokenModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_VerifyResetTokenModelCopyWithImpl<$Res>
    extends _$VerifyResetTokenModelCopyWithImpl<$Res, _$_VerifyResetTokenModel>
    implements _$$_VerifyResetTokenModelCopyWith<$Res> {
  __$$_VerifyResetTokenModelCopyWithImpl(_$_VerifyResetTokenModel _value,
      $Res Function(_$_VerifyResetTokenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_VerifyResetTokenModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VerifyResetTokenModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyResetTokenModel implements _VerifyResetTokenModel {
  const _$_VerifyResetTokenModel({this.status, this.data});

  factory _$_VerifyResetTokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyResetTokenModelFromJson(json);

  @override
  final String? status;
  @override
  final VerifyResetTokenModelData? data;

  @override
  String toString() {
    return 'VerifyResetTokenModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyResetTokenModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyResetTokenModelCopyWith<_$_VerifyResetTokenModel> get copyWith =>
      __$$_VerifyResetTokenModelCopyWithImpl<_$_VerifyResetTokenModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyResetTokenModelToJson(
      this,
    );
  }
}

abstract class _VerifyResetTokenModel implements VerifyResetTokenModel {
  const factory _VerifyResetTokenModel(
      {final String? status,
      final VerifyResetTokenModelData? data}) = _$_VerifyResetTokenModel;

  factory _VerifyResetTokenModel.fromJson(Map<String, dynamic> json) =
      _$_VerifyResetTokenModel.fromJson;

  @override
  String? get status;
  @override
  VerifyResetTokenModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyResetTokenModelCopyWith<_$_VerifyResetTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyResetTokenModelData _$VerifyResetTokenModelDataFromJson(
    Map<String, dynamic> json) {
  return _VerifyResetTokenModelData.fromJson(json);
}

/// @nodoc
mixin _$VerifyResetTokenModelData {
  bool? get success => throw _privateConstructorUsedError;
  ResetDataObj? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyResetTokenModelDataCopyWith<VerifyResetTokenModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyResetTokenModelDataCopyWith<$Res> {
  factory $VerifyResetTokenModelDataCopyWith(VerifyResetTokenModelData value,
          $Res Function(VerifyResetTokenModelData) then) =
      _$VerifyResetTokenModelDataCopyWithImpl<$Res, VerifyResetTokenModelData>;
  @useResult
  $Res call({bool? success, ResetDataObj? data});

  $ResetDataObjCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyResetTokenModelDataCopyWithImpl<$Res,
        $Val extends VerifyResetTokenModelData>
    implements $VerifyResetTokenModelDataCopyWith<$Res> {
  _$VerifyResetTokenModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResetDataObj?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResetDataObjCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ResetDataObjCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VerifyResetTokenModelDataCopyWith<$Res>
    implements $VerifyResetTokenModelDataCopyWith<$Res> {
  factory _$$_VerifyResetTokenModelDataCopyWith(
          _$_VerifyResetTokenModelData value,
          $Res Function(_$_VerifyResetTokenModelData) then) =
      __$$_VerifyResetTokenModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, ResetDataObj? data});

  @override
  $ResetDataObjCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_VerifyResetTokenModelDataCopyWithImpl<$Res>
    extends _$VerifyResetTokenModelDataCopyWithImpl<$Res,
        _$_VerifyResetTokenModelData>
    implements _$$_VerifyResetTokenModelDataCopyWith<$Res> {
  __$$_VerifyResetTokenModelDataCopyWithImpl(
      _$_VerifyResetTokenModelData _value,
      $Res Function(_$_VerifyResetTokenModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_VerifyResetTokenModelData(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResetDataObj?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyResetTokenModelData implements _VerifyResetTokenModelData {
  const _$_VerifyResetTokenModelData({this.success, this.data});

  factory _$_VerifyResetTokenModelData.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyResetTokenModelDataFromJson(json);

  @override
  final bool? success;
  @override
  final ResetDataObj? data;

  @override
  String toString() {
    return 'VerifyResetTokenModelData(success: $success, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyResetTokenModelData &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyResetTokenModelDataCopyWith<_$_VerifyResetTokenModelData>
      get copyWith => __$$_VerifyResetTokenModelDataCopyWithImpl<
          _$_VerifyResetTokenModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyResetTokenModelDataToJson(
      this,
    );
  }
}

abstract class _VerifyResetTokenModelData implements VerifyResetTokenModelData {
  const factory _VerifyResetTokenModelData(
      {final bool? success,
      final ResetDataObj? data}) = _$_VerifyResetTokenModelData;

  factory _VerifyResetTokenModelData.fromJson(Map<String, dynamic> json) =
      _$_VerifyResetTokenModelData.fromJson;

  @override
  bool? get success;
  @override
  ResetDataObj? get data;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyResetTokenModelDataCopyWith<_$_VerifyResetTokenModelData>
      get copyWith => throw _privateConstructorUsedError;
}

ResetDataObj _$ResetDataObjFromJson(Map<String, dynamic> json) {
  return _ResetDataObj.fromJson(json);
}

/// @nodoc
mixin _$ResetDataObj {
  String? get user => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetDataObjCopyWith<ResetDataObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetDataObjCopyWith<$Res> {
  factory $ResetDataObjCopyWith(
          ResetDataObj value, $Res Function(ResetDataObj) then) =
      _$ResetDataObjCopyWithImpl<$Res, ResetDataObj>;
  @useResult
  $Res call({String? user, String? message});
}

/// @nodoc
class _$ResetDataObjCopyWithImpl<$Res, $Val extends ResetDataObj>
    implements $ResetDataObjCopyWith<$Res> {
  _$ResetDataObjCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetDataObjCopyWith<$Res>
    implements $ResetDataObjCopyWith<$Res> {
  factory _$$_ResetDataObjCopyWith(
          _$_ResetDataObj value, $Res Function(_$_ResetDataObj) then) =
      __$$_ResetDataObjCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? user, String? message});
}

/// @nodoc
class __$$_ResetDataObjCopyWithImpl<$Res>
    extends _$ResetDataObjCopyWithImpl<$Res, _$_ResetDataObj>
    implements _$$_ResetDataObjCopyWith<$Res> {
  __$$_ResetDataObjCopyWithImpl(
      _$_ResetDataObj _value, $Res Function(_$_ResetDataObj) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ResetDataObj(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetDataObj implements _ResetDataObj {
  const _$_ResetDataObj({this.user, this.message});

  factory _$_ResetDataObj.fromJson(Map<String, dynamic> json) =>
      _$$_ResetDataObjFromJson(json);

  @override
  final String? user;
  @override
  final String? message;

  @override
  String toString() {
    return 'ResetDataObj(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetDataObj &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetDataObjCopyWith<_$_ResetDataObj> get copyWith =>
      __$$_ResetDataObjCopyWithImpl<_$_ResetDataObj>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetDataObjToJson(
      this,
    );
  }
}

abstract class _ResetDataObj implements ResetDataObj {
  const factory _ResetDataObj({final String? user, final String? message}) =
      _$_ResetDataObj;

  factory _ResetDataObj.fromJson(Map<String, dynamic> json) =
      _$_ResetDataObj.fromJson;

  @override
  String? get user;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResetDataObjCopyWith<_$_ResetDataObj> get copyWith =>
      throw _privateConstructorUsedError;
}
