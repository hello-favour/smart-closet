import 'package:flutter/material.dart';

@immutable
class SmartTexts {
  const SmartTexts._();

  static Text headingBig(String text, BuildContext context,
      {Color? color,
      FontWeight? fontWeight,
      bool center = false,
      double? fontSize}) {
    return Text(
      text,
      textAlign: center ? TextAlign.center : TextAlign.start,
      style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.w800,
          ),
    );
  }

  static Text headingMedium(String text, BuildContext context,
          {Color? color, bool center = false, FontWeight? fontWeight}) =>
      Text(
        text,
        textAlign: center ? TextAlign.center : TextAlign.start,
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: color, fontWeight: fontWeight),
      );

  static Text headingSmall(String text, BuildContext context,
      {Color? color,
      TextOverflow? overflow,
      int? maxLines,
      FontWeight? fontWeight,
      bool center = false}) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: center ? TextAlign.center : TextAlign.start,
      style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(color: color, fontWeight: fontWeight),
    );
  }

  static Text subHeading(
    String text,
    BuildContext context, {
    Color? color,
    TextOverflow? overflow,
    int? maxLines,
    FontWeight? fontWeight,
    bool center = false,
    FontStyle? fontStyle,
    String? fontFamily,
    double? letterSpacing,
  }) {
    return Text(
      text,
      overflow: overflow,
      textAlign: center ? TextAlign.center : TextAlign.start,
      maxLines: maxLines,
      style: _textTheme(context).titleLarge?.copyWith(
            color: color,
            fontWeight: fontWeight ?? FontWeight.w300,
            fontFamily: fontFamily,
            fontStyle: fontStyle,
            letterSpacing: letterSpacing,
          ),
    );
  }

  static Text subHeadingSmall(String text, BuildContext context,
      {Color? color,
      TextOverflow? overflow,
      int? maxLines,
      FontWeight? fontWeight,
      bool center = false}) {
    return Text(
      text,
      overflow: overflow,
      textAlign: center ? TextAlign.center : TextAlign.start,
      maxLines: maxLines,
      style: _textTheme(context)
          .titleSmall
          ?.copyWith(color: color, fontWeight: fontWeight),
    );
  }

  ///[callout], attention text
  static Text callout(String text, BuildContext context,
      {Color? color,
      int? maxLines,
      TextOverflow? overflow,
      FontWeight? fontWeight,
      bool center = false}) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: center ? TextAlign.center : TextAlign.start,
      style: _textTheme(context)
          .headlineSmall
          ?.copyWith(color: color, fontWeight: fontWeight),
    );
  }

  static Text footnote(String text, BuildContext context,
      {Color? color,
      int? maxLines,
      TextOverflow? overflow,
      FontWeight? fontWeight,
      bool center = false}) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: center ? TextAlign.center : TextAlign.start,
      style: _textTheme(context).labelSmall?.copyWith(
            color: color,
            fontWeight: fontWeight,
            fontFamily: "",
            letterSpacing: 0.1,
          ),
    );
  }

  static Text bodyText(
    String text,
    BuildContext context, {
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
    bool center = false,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? fontSize,
    TextDecoration? textDecoration,
  }) {
    return Text(
      text,
      textAlign: center ? TextAlign.center : TextAlign.start,
      overflow: overflow,
      maxLines: maxLines,
      style: _textTheme(context).bodyLarge?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.w300,
            fontStyle: fontStyle,
            decoration: textDecoration,
          ),
    );
  }

  static Text button(String text, BuildContext context,
      {Color? color, TextStyle? titleStyle, FontWeight? fontWeight}) {
    return Text(text,
        style: titleStyle ??
            Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: color,
                  fontWeight: fontWeight ?? FontWeight.w300,
                ));
  }

  static Text subtitleButton(String subtitle, BuildContext context,
      {Color? color, TextStyle? subTitleStyle, FontWeight? fontWeight}) {
    return Text(subtitle,
        style: subTitleStyle ??
            Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: color,
                  fontWeight: fontWeight ?? FontWeight.w300,
                ));
  }

  static Text caption(String text, BuildContext context,
      {Color? color,
      int? maxLines,
      TextOverflow? overflow,
      FontWeight? fontWeight,
      bool center = false,
      FontStyle? fontStyle}) {
    return Text(
      text,
      textAlign: center ? TextAlign.center : TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
      style: _textTheme(context).bodySmall?.copyWith(
          color: color,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontFamily: "Inter",
          fontStyle: fontStyle),
    );
  }

  static TextTheme _textTheme(BuildContext context) =>
      Theme.of(context).textTheme;
}
