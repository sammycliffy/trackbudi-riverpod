import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class BaseApi {
  dynamic get apiUrl {
    if (kReleaseMode) {
      log('api-url::: ${dotenv.env['PRODUCTION']}');
      return dotenv.env['PRODUCTION'] ?? '';
    } else {
      log('api-url::: ${dotenv.env['STAGING']}');
      return dotenv.env['STAGING'] ?? '';
    }
  }
}
