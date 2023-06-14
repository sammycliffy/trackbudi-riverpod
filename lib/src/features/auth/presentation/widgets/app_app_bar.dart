import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/shared/resources/app_images.dart';
import '../../../../core/shared/resources/colors_tr.dart';
import '../../../../core/shared/resources/custom_text.dart';

appBar() => AppBar(
      backgroundColor: AppColors.white,
      elevation: 0.0,
      leading: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SvgPicture.asset(AppImages.arrowBack),
        ),
      ),
      titleSpacing: 0,
      title: customText(
          text: 'Back', fontSize: 12, textColor: AppColors.textPrimary),
    );
