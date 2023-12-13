import 'dart:ui';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 3,
      );
  static ButtonStyle get outlineBlackTL15 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineBlackTL151 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.blueGray50001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL9 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        side: BorderSide(
          color: appTheme.blueGray50001,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL15 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL151 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
