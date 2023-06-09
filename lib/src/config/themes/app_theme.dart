import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'Euclad',
        primaryColor: AppColors.primary,
        textTheme: TextTheme(
            bodySmall: TextStyle(
                fontFamily: 'Euclad',
                color: AppColors.darkBlue.withOpacity(0.6),
                fontSize: 12),
            headlineLarge: const TextStyle(
                fontFamily: 'Euclad',
                color: AppColors.darkBlue,
                fontSize: 28)));
  }
}
