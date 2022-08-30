import 'package:flutter/material.dart';
import 'package:motorcum/desing/app_colors.dart';

import 'app_texts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.appRed,
      scaffoldBackgroundColor: AppColors.appWhite,
      fontFamily: 'Monda', //3
      toggleButtonsTheme: ToggleButtonsThemeData(
        textStyle: AppTexts.buttonText,
        borderColor: AppColors.appBlue,
        selectedBorderColor: AppColors.appBlue,
        selectedColor: AppColors.appWhite,

        ///seçilen butonun textin rengi
        color: AppColors.appWhite,

        /// seçilmeyen etxtin rengi
        fillColor: AppColors.appBlue,

        ///seçilen butonun arka planı
        focusColor: AppColors.lightBlue,
        disabledColor: AppColors.appRed,
        hoverColor: AppColors.appBlue,

        ///basılı tutma efeti arkağlan rengi
        splashColor: AppColors.appBlue,

        /// vasılma efekti arkaplan rengi
        highlightColor: AppColors.appRed,

        /// bilmiyom
        borderRadius: BorderRadius.circular(4),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.lightBlue,
        focusColor: AppColors.darkBlue,
        hoverColor: AppColors.darkBlue,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.appRed,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.appRed,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.appWhite,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkBlue,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20)),
          textStyle: MaterialStateProperty.all(AppTexts.buttonText),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.lightBlue;
            }
            return AppColors.appBlue;
          })
        )
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.appBlue,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.appBlue
      ),
      dividerColor: AppColors.darkBlue,
    );
  }
}
