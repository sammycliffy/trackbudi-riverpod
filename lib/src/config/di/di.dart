import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../db/secure_storage.dart';
import '../service/api/k_api.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => Dio();
  @lazySingleton
  Api get apiService => Api();
    @lazySingleton
  SecureStore get secureStore => SecureStore();
}
