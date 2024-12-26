import 'package:flutter/material.dart';

import 'app_color.dart';

String fontFamilyRegular = 'gilroy';
String fontFamilyBold = 'gilroy-bold';
ThemeData themeLight(BuildContext context) {
  return ThemeData(
      brightness: Brightness.light,
      cardColor: ColorLight.card,
      disabledColor: ColorLight.disabledButton,
      highlightColor: ColorLight.fontTitle,
      hintColor: ColorLight.fontSubtitle,
      indicatorColor: ColorLight.primary,
      iconTheme: const IconThemeData(
        color: ColorLight.fontTitle,
      ),
      primaryColor: ColorLight.primary,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorLight.primary,
      ),
      checkboxTheme: const CheckboxThemeData(
        side: BorderSide(
          color: ColorLight.disabledButton,
        ),
      ),
      scaffoldBackgroundColor: ColorLight.background,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: ColorLight.card,
        ),
        headlineSmall: TextStyle(
            fontFamily: fontFamilyRegular,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xfff7f7f7),
            height: 0),
        labelSmall: TextStyle(fontFamily: fontFamilyRegular, fontSize: 12, color: ColorLight.card),
        labelMedium: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 24,
          color: ColorLight.card,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 36,
          fontWeight: FontWeight.w400,
          color: ColorLight.card,
        ),
      ));
}

ThemeData themeDark(BuildContext context) {
  return ThemeData(
      brightness: Brightness.dark,
      cardColor: ColorDark.card,
      disabledColor: ColorDark.disabledButton,
      hintColor: ColorDark.fontSubtitle,
      indicatorColor: ColorDark.primary,
      colorScheme: ColorScheme.dark(
          background: ColorDark.background,
          outline: ColorDark.fontDisable,
          outlineVariant: ColorDark.border,
          onSecondary: ColorDark.hintText,
          onSurface: ColorDark.fontTitle,
          onSurfaceVariant: ColorDark.borderShadow,
          onInverseSurface: ColorDark.shadowColor),
      iconTheme: const IconThemeData(
        color: ColorDark.fontTitle,
      ),
      primaryColor: ColorDark.primary,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorDark.primary,
      ),
      checkboxTheme: const CheckboxThemeData(
        side: BorderSide(
          color: ColorDark.disabledButton,
        ),
      ),
      scaffoldBackgroundColor: ColorDark.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorDark.background,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontFamily: fontFamilyBold,
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: ColorDark.fontTitle,
        ),
        headlineSmall: TextStyle(
            fontFamily: fontFamilyRegular,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xfff7f7f7),
            height: 0),
        labelSmall: TextStyle(fontFamily: fontFamilyRegular, fontSize: 12, color: ColorLight.card),
        labelMedium: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 24,
          color: ColorDark.fontSubtitle,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 36,
          fontWeight: FontWeight.w400,
          color: ColorDark.fontTitle,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorDark.fontTitle,
        ),
        titleSmall: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ColorDark.fontTitle,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamilyRegular,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: ColorDark.fontTitle,
        ),
      ));
}
