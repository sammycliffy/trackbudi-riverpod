import 'package:flutter/material.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/app_spacer.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';

class TrackBudiTextFormField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String? label;
  final String? hintText;
  final Widget? prefixIcon;
  final bool isPassword;
  final String? Function(String?)? validator;
  final String? error;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  const TrackBudiTextFormField(
      {super.key,
      this.label,
      this.onChanged,
      this.hintText,
      this.error,
      this.prefixIcon,
      this.keyboardType = TextInputType.text,
      this.textEditingController,
      this.isPassword = false,
      this.validator});

  @override
  State<TrackBudiTextFormField> createState() => _TrackBudiTextFormFieldState();
}

class _TrackBudiTextFormFieldState extends State<TrackBudiTextFormField> {
  bool isPasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
            text: '${widget.label}',
            fontSize: 11,
            textColor: AppColors.textPrimary),
        heightSpace(2),
        TextFormField(
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          controller: widget.textEditingController,
          obscureText: isPasswordShow ? false : widget.isPassword,
          validator: widget.validator,
          style: TextStyle(fontSize: 11),
          decoration: InputDecoration(
              errorText: widget.error,
              contentPadding: EdgeInsets.only(left: 10),
              errorStyle: TextStyle(fontSize: 10),
              suffixIcon: showPasswordIcon(widget.isPassword),
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 11),
              prefixIcon: widget.prefixIcon,
              fillColor: AppColors.white,
              filled: true,
              enabledBorder: AppColors.normalBorder,
              errorBorder: AppColors.errorBorder,
              focusedBorder: AppColors.normalBorder,
              focusedErrorBorder: AppColors.normalBorder),
        ),
      ],
    );
  }

  showPasswordIcon(bool isPassword) {
    if (isPassword) {
      if (isPasswordShow) {
        return IconButton(
          icon: const Icon(Icons.visibility),
          onPressed: () => setState(() {
            isPasswordShow = !isPasswordShow;
          }),
        );
      }
      return IconButton(
        icon: const Icon(Icons.visibility_off),
        onPressed: () => setState(() {
          isPasswordShow = !isPasswordShow;
        }),
      );
    }
  }
}
