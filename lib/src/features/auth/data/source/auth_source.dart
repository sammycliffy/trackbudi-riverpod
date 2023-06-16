// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:trackbudi_mobile/src/config/keys/endpoints.dart';
import 'package:trackbudi_mobile/src/config/service/api/k_api.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_vendor_response_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/create_logistic_partner_resp_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/update_user_details.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_otp.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/register_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/model/verify_reset_token_model.dart';
import 'package:trackbudi_mobile/src/features/auth/data/source/auth_s.dart';

@Named('giftCardSource')
@Injectable(as: AuthService)
class AuthSource extends AuthService {
  final Api api;

  AuthSource({required this.api});

  @override
  Future<VerifyOtp> userLoginRequestOtp(countryCode, phone) async {
    var payload = {'countryCode': countryCode, 'phone': phone};
    try {
      Response response =
          await api.post('${auth.user}/request-otp', data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = VerifyOtp.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VerifyOtp> userLoginVerifyOtp(otp, phone) async {
    var payload = {'phone': phone, 'otp': otp};
    try {
      Response response =
          await api.post('${auth.user}/verify-otp', data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = VerifyOtp.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterModel> login(params) async {
    try {
      Response response = await api.post(auth.signIn, data: params);
      Logger().w('api-resp==> ${response.data}');
      final r = RegisterModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterModel> phoneOnobarding(payload) async {
    try {
      Response response = await api.post(auth.register, data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = RegisterModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VerifyOtp> verifyOtp(otp, userId) async {
    var payload = {'otp': otp};
    try {
      Response response =
          await api.post('${auth.user + userId}/verify-otp', data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = VerifyOtp.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VerifyOtp> resendOtp(userId) async {
    try {
      Response response = await api.post('${auth.user + userId}/resend-otp');
      Logger().w('api-resp==> ${response.data}');
      final r = VerifyOtp.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateUserDetails> updateUserProfile(
      firstName, lastName, email, password, userId) async {
    var payload = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'confirmPassword': password
    };
    try {
      Response response =
          await api.put('${auth.user}update' + userId, data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = UpdateUserDetails.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterModel> initiateResetPassword(Map params) async {
    try {
      Response response =
          await api.post(auth.user + 'forgot-password', data: params);
      Logger().w('api-resp==> ${response.data}');
      final r = RegisterModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VerifyResetTokenModel> verifyResetPassword(Map params) async {
    try {
      Response response =
          await api.post(auth.user + 'verify-reset-otp', data: params);
      Logger().w('api-resp==> ${response.data}');
      final r = VerifyResetTokenModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterModel> resetPassword(Map params) async {
    try {
      Response response =
          await api.post(auth.user + 'reset-password', data: params);
      Logger().w('api-resp==> ${response.data}');
      final r = RegisterModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreateVendorResponseModel> createVendor(payload) async {
    try {
      Response response = await api.post(auth.createVendor, data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = CreateVendorResponseModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreateLogisticPartnerRespModel> createlogisticPartner(payload) async {
    try {
      Response response =
          await api.post(auth.createLogisticPartner, data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = CreateLogisticPartnerRespModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateUserDetails> updateUserType(payload) async {
    try {
      Response response =
          await api.post(auth.user + 'update-type', data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = UpdateUserDetails.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreateVendorResponseModel> updateVendor(payload) async {
    try {
      Response response = await api.put(auth.updateVendor, data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = CreateVendorResponseModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreateLogisticPartnerRespModel> updatelogisticPartner(payload) async {
    try {
      Response response = await api.put(auth.updateLogistic, data: payload);
      Logger().w('api-resp==> ${response.data}');
      final r = CreateLogisticPartnerRespModel.fromJson(response.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }
}
