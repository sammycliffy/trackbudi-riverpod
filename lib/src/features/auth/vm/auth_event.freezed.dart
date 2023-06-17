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
    required TResult Function(String? value) changePohone,
    required TResult Function(String? countryCode, String? phoneNumber)
        registerPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value)? changePohone,
    TResult? Function(String? countryCode, String? phoneNumber)? registerPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? changePohone,
    TResult Function(String? countryCode, String? phoneNumber)? registerPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RegisterPhone value) registerPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RegisterPhone value)? registerPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RegisterPhone value)? registerPhone,
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
  $Res call({String? value});
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
  }) {
    return _then(_$PhoneEvent(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhoneEvent implements PhoneEvent {
  const _$PhoneEvent({required this.value});

  @override
  final String? value;

  @override
  String toString() {
    return 'AuthEvent.changePohone(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneEventCopyWith<_$PhoneEvent> get copyWith =>
      __$$PhoneEventCopyWithImpl<_$PhoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) changePohone,
    required TResult Function(String? countryCode, String? phoneNumber)
        registerPhone,
  }) {
    return changePohone(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value)? changePohone,
    TResult? Function(String? countryCode, String? phoneNumber)? registerPhone,
  }) {
    return changePohone?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? changePohone,
    TResult Function(String? countryCode, String? phoneNumber)? registerPhone,
    required TResult orElse(),
  }) {
    if (changePohone != null) {
      return changePohone(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RegisterPhone value) registerPhone,
  }) {
    return changePohone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RegisterPhone value)? registerPhone,
  }) {
    return changePohone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RegisterPhone value)? registerPhone,
    required TResult orElse(),
  }) {
    if (changePohone != null) {
      return changePohone(this);
    }
    return orElse();
  }
}

abstract class PhoneEvent implements AuthEvent {
  const factory PhoneEvent({required final String? value}) = _$PhoneEvent;

  String? get value;
  @JsonKey(ignore: true)
  _$$PhoneEventCopyWith<_$PhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPhoneCopyWith<$Res> {
  factory _$$RegisterPhoneCopyWith(
          _$RegisterPhone value, $Res Function(_$RegisterPhone) then) =
      __$$RegisterPhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String? countryCode, String? phoneNumber});
}

/// @nodoc
class __$$RegisterPhoneCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterPhone>
    implements _$$RegisterPhoneCopyWith<$Res> {
  __$$RegisterPhoneCopyWithImpl(
      _$RegisterPhone _value, $Res Function(_$RegisterPhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$RegisterPhone(
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterPhone implements RegisterPhone {
  const _$RegisterPhone({this.countryCode, this.phoneNumber});

  @override
  final String? countryCode;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.registerPhone(countryCode: $countryCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhone &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPhoneCopyWith<_$RegisterPhone> get copyWith =>
      __$$RegisterPhoneCopyWithImpl<_$RegisterPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) changePohone,
    required TResult Function(String? countryCode, String? phoneNumber)
        registerPhone,
  }) {
    return registerPhone(countryCode, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value)? changePohone,
    TResult? Function(String? countryCode, String? phoneNumber)? registerPhone,
  }) {
    return registerPhone?.call(countryCode, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? changePohone,
    TResult Function(String? countryCode, String? phoneNumber)? registerPhone,
    required TResult orElse(),
  }) {
    if (registerPhone != null) {
      return registerPhone(countryCode, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneEvent value) changePohone,
    required TResult Function(RegisterPhone value) registerPhone,
  }) {
    return registerPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneEvent value)? changePohone,
    TResult? Function(RegisterPhone value)? registerPhone,
  }) {
    return registerPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneEvent value)? changePohone,
    TResult Function(RegisterPhone value)? registerPhone,
    required TResult orElse(),
  }) {
    if (registerPhone != null) {
      return registerPhone(this);
    }
    return orElse();
  }
}

abstract class RegisterPhone implements AuthEvent {
  const factory RegisterPhone(
      {final String? countryCode, final String? phoneNumber}) = _$RegisterPhone;

  String? get countryCode;
  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$RegisterPhoneCopyWith<_$RegisterPhone> get copyWith =>
      throw _privateConstructorUsedError;
}
