// ignore_for_file: non_constant_identifier_names

final auth = _Auth();

class _Auth {
  final baseURL = 'https://app.trackbudi.com:3000/api/v1/';
  final register = 'user/register';
  final update_type = 'user/update-type';
  final signIn = 'user/login';
  final logout = 'user/logout';
  final createLogisticPartner = 'logistic/logistics-partner';
  final updateLogistic = 'logistic/update';
  final createVendor = 'vendor/vendor';
  final updateVendor = 'vendor/update';
  final user = 'user/';
}
