// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:trackbudi_mobile/src/config/service/navigation_service/nav_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';

class ToastResp {
  static final NavigationService navigationService = NavigationService();
  static Future<bool?> toastMsgInfo({String? resp}) {
    return Fluttertoast.showToast(
        msg: resp.toString(),
        backgroundColor: AppColors.darkBlue,
        textColor: Colors.white,
        fontSize: 9.sp);
  }

  static Future<bool?> toastMsgError({String? resp}) {
    return Fluttertoast.showToast(
        msg: resp.toString(),
        backgroundColor: AppColors.red,
        textColor: Colors.white,
        fontSize: 9.sp);
  }

  static Future<bool?> toastMsgSuccess({String? resp}) {
    return Fluttertoast.showToast(
        msg: resp.toString(),
        backgroundColor: AppColors.green,
        textColor: Colors.white,
        fontSize: 9.sp);
  }
}
