import 'package:flutter/material.dart';
import '../../../../core/shared/resources/colors_tr.dart';
class TrackBudiButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const TrackBudiButton({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(28)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
