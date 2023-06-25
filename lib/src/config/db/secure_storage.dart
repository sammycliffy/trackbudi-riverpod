import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
class SecureStore {
  final FlutterSecureStorage storage;
  factory SecureStore() => SecureStore._();

  SecureStore._() : storage = const FlutterSecureStorage();

  void setString(String key, String? value) async {
    try {
      return await storage.write(key: key, value: value);
    } catch (e) {
      if (kDebugMode) print(e);
      return null;
    }
  }

  getString(String key) async {
    try {
      return await storage.read(key: key);
    } catch (e) {
      if (kDebugMode) print(e);
      return null;
    }
  }

  deleteKey(String key) async => await storage.delete(key: key);
}
