import 'package:flutter/material.dart';

import '../design/app_colors.dart';
import '../design/app_texts.dart';

class AppButtons{
///Listview içerisinde direk kullanırsak arpa planı direk tüm satırı kaplıyor
  static Widget ToggleButton(
  {required List<bool> isSelected,
    required void Function(int)?  onPressed,
    required List<Widget> children,
  }
      ){
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(4),
      ),
      child: ToggleButtons(
        isSelected: isSelected,
        onPressed: onPressed,
        children: children,
      ),
    );
  }

  static Widget DropDownButton(
      {
        required String label,
        required String? value,
        required void Function(String?)?  onChanged,
        required List<DropdownMenuItem<String>>? items,
        bool isBlue = true,
        bool isExpanded = true,
      }
      ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: isBlue == true ? AppTexts.label : AppTexts.buttonTextLightBlue,textAlign: TextAlign.start),
        Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.darkBlue),
            color: isBlue == true ? AppColors.lightBlue : AppColors.appWhite,
          ),
          child: DropdownButton<String>(
            isExpanded: isExpanded,
            elevation: 0,
            value: value,
            items: items,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}