import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trackbudi_mobile/src/config/di/provider.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';

checkbox() {
  return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
    final state = ref.watch(authNotifier.select((vaue) => vaue));
    return GestureDetector(
      onTap: () => ref
          .read(authNotifier.notifier)
          .termsAndConditionChangedEvent(!state.isTermAndConditionVal),
      child: Container(
        width: 17,
        height: 17,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(2)),
        child: state.isTermAndConditionVal
            ? const Center(
                child: Icon(
                  Icons.check,
                  size: 15,
                  color: AppColors.white,
                ),
              )
            : Container(
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: AppColors.white,
                ),
              ),
      ),
    );
  });
}
