import 'dart:convert';
import 'dart:developer';

import 'package:trackbudi_mobile/src/config/keys/app_keys.dart';
import 'package:trackbudi_mobile/src/config/keys/end_points.dart';
import 'package:trackbudi_mobile/src/config/service/api/api_client.dart';

import '../../../../config/service/locator/locator.dart';
import '../../../../config/service/storage/local_storage.dart';

class AuthRepo {
  final _storage = locator<LocalStorageService>();

  Future<bool> phoneNumberRegister(
    String countryCode,
    String phoneNumber,
  ) async {
    var body = {'countryCode': countryCode, 'phone': phoneNumber};
    final response =
        await ApiClient.post(Endpoints.register, body: body, useToken: false);

    if (response.status == 'success') {
      _storage.saveDataToDisk(AppKeys.token, json.encode(response.data));
      return true;
    }
    return false;
  }

  Future<bool> verifySmsOTP(String otp) async {
    var body = {'otp': otp};
    String userResponse = _storage.getDataFromDisk(AppKeys.token);
    log(userResponse);

    // final response =
    //     await ApiClient.post(Endpoints.register, body: body, useToken: true);

    // if (response.status == 'success') {
    //   return true;
    // }

    return false;
  }
}
