import 'package:flutter/material.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/colors_tr.dart';
import 'package:trackbudi_mobile/src/core/shared/resources/custom_text.dart';

rowSection(String text) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 10,
            height: 10,
            decoration:
                BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          ),
        ),
        Flexible(
          child: bodyText(text: text),
        )
      ],
    );
