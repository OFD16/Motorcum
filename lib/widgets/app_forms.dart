import 'package:flutter/material.dart';
import 'package:motorcum/desing/app_texts.dart';

class AppForms {
  static Widget TextField(
  {
  required String label,
    required TextEditingController controller,
}
      ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: AppTexts.label,textAlign: TextAlign.start),
        TextFormField(
          controller: controller,
        )
      ],
    );
  }
}