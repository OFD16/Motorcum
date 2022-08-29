import 'package:flutter/material.dart';

import '../desing/app_colors.dart';
import '../desing/app_texts.dart';

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
      }
      ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: AppTexts.label,textAlign: TextAlign.start),
        Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.darkBlue),
            color: AppColors.lightBlue,
          ),
          child: DropdownButton<String>(
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


/* onChanged: (String? newValue) {
          setState(() {
            value = newValue!;
          });
        },*/
