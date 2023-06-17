import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.changePohone({required String? value}) = PhoneEvent;
  const factory AuthEvent.registerPhone(
      {String? countryCode, String? phoneNumber}) = RegisterPhone;
}
