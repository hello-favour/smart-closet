import 'package:flutter/material.dart';
import 'package:smart_closet/theme/colors.dart';

class AppSpacings {
  AppSpacings._();
  
  static const double cardPadding = 20;
  static const double webWidth = 1080;
  static const double elementSpacing = cardPadding * 0.5;
  static const double cardOutlineWidth = 0.25;

  static const defaultBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  static const matchBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );

  static const defaultBorderRadiusTextField = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );

  static const defaultCircularRadius = BorderRadius.only(
    topLeft: Radius.circular(999),
    topRight: Radius.circular(999),
    bottomLeft: Radius.circular(999),
    bottomRight: Radius.circular(999),
  );

  static const OutlineInputBorder outLineBorder = OutlineInputBorder(
    borderRadius: defaultBorderRadiusTextField,
    borderSide: BorderSide(color: AppColors.primaryColor, width: 1.6),
  );

  static const OutlineInputBorder disabledOutLineBorder = OutlineInputBorder(
    borderRadius: defaultBorderRadiusTextField,
    borderSide: BorderSide(
      color: AppColors.archColor,
      width: 1.6,
    ),
  );

  static const OutlineInputBorder errorLineBorder = OutlineInputBorder(
    borderRadius: defaultBorderRadiusTextField,
    borderSide: BorderSide(color: AppColors.archColor, width: 1.86),
  );
}
