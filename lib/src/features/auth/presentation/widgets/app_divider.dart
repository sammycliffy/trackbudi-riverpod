import 'package:flutter/material.dart';

import '../../../../core/shared/resources/colors_tr.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.dividerColor,
      thickness: 1.0,
    );
  }
}
