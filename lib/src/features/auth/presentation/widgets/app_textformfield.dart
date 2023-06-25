import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final List<TextInputFormatter>? inputFormatters;
  final String? error;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  const TrackBudiTextFormField(
      {super.key,
      this.label,
      this.inputFormatters,
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
        TextField(
          cursorColor: AppColors.lightPrimary,
          cursorWidth: 0.9,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          controller: widget.textEditingController,
          obscureText: isPasswordShow ? false : widget.isPassword,
          // validator: widget.validator,
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textformGrey),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              errorText: widget.error,
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textformGrey),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              contentPadding: EdgeInsets.only(left: 10),
              errorStyle: TextStyle(fontSize: 10),
              suffixIcon: showPasswordIcon(widget.isPassword),
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 12),
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
          icon: const Icon(
            Icons.visibility,
            color: AppColors.lightPrimary,
          ),
          onPressed: () => setState(() {
            isPasswordShow = !isPasswordShow;
          }),
        );
      }
      return IconButton(
        icon: const Icon(
          Icons.visibility_off,
          size: 18,
          color: AppColors.lightPrimary,
        ),
        onPressed: () => setState(() {
          isPasswordShow = !isPasswordShow;
        }),
      );
    }
  }
}
