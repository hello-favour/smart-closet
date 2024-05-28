import 'package:flutter/material.dart';
import 'package:smart_closet/theme/colors.dart';

class LightThemeData {
  ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.dark(
      background: Colors.white,
      primary: AppColors.primaryColor,
      secondary: AppColors.black,
      tertiary: AppColors.black,
      inversePrimary: Colors.grey.shade300,
    ),
  );
}
