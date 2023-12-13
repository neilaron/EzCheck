import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA700,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple400,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToPurple => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.1),
          end: Alignment(0.5, 2.49),
          colors: [
            appTheme.blueGray500,
            appTheme.purple10000,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPink => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.1),
          end: Alignment(0.5, 2.49),
          colors: [
            theme.colorScheme.primary,
            appTheme.pink5000,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.37, -0.06),
          end: Alignment(0.69, 1.36),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray400,
            appTheme.teal100,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToTeal100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.37, -0.06),
          end: Alignment(0.69, 1.36),
          colors: [
            theme.colorScheme.primary,
            appTheme.teal100,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.5),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: appTheme.blueGray50001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9005 => BoxDecoration(
        color: appTheme.teal100,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.blueGray50001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray50001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray50001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray800 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 5.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder149 => BorderRadius.circular(
        149.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder56 => BorderRadius.circular(
        56.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
        9.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
