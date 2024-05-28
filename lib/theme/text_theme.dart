import 'package:flutter/material.dart';
import 'package:smart_closet/constants/app_fonts.dart';
import './colors.dart';

class AppTextThemes {
  static const double headline1Size = 34;
  static const double headline2Size = 28;
  static const double headline3Size = 22;
  static const double headline4Size = 20;
  static const double headline5Size = 18;
  static const double headline6Size = 17.5;
  static const double subtile1Size = 16;
  static const double subtile2Size = 15.5;
  static const double body1Size = 15;
  static const double body2Size = 14.5;
  static const double buttonSize = 16;
  static const double caption = 13.5;
  static const double overline = 12.5;

  static const TextTheme mobileTextThemeLight = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline1Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline2Size,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline3Size,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline4Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline5Size,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline6Size,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: subtile1Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: subtile2Size,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: body1Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: body2Size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: buttonSize,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: caption,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: overline,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
  );

  static const TextTheme mobileTextThemeDark = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline1Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline2Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline3Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline4Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline5Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: headline6Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: subtile1Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: subtile2Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: body1Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: body2Size,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: buttonSize,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: caption,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontFamily: AppFonts.Inter,
      fontSize: overline,
      color: AppColors.dimGrey,
      fontWeight: FontWeight.w400,
    ),
  );
}
