import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeNotoSansGray500 =>
      theme.textTheme.bodyLarge!.notoSans.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeNotoSansOnPrimary =>
      theme.textTheme.bodyLarge!.notoSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimaryExtraLight => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w200,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallNotoSansOnPrimary =>
      theme.textTheme.bodySmall!.notoSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayMediumExtraBold => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get displayMediumInter => theme.textTheme.displayMedium!.inter;
  // Headline text style
  static get headlineLargeMontserratBluegray50001 =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        color: appTheme.blueGray50001,
      );
  static get headlineLargeMontserratPrimary =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBold_1 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBold_2 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallKameronBlack900 =>
      theme.textTheme.headlineSmall!.kameron.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelMediumOnPrimary10 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelMediumOnPrimaryContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelMediumPinkA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.pinkA700,
      );
  static get labelMediumPinkA700_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.pinkA700,
      );
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Title text style
  static get titleLargeMontserrat =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratBlack900 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMontserratBlack900Bold =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratBlack900Medium =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMontserratBlack900SemiBold =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeMontserratBluegray50001 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.blueGray50001,
      );
  static get titleLargeMontserratBluegray800 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.blueGray800,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratBold =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratOnError =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeMontserratPinkA700 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.pinkA700,
      );
  static get titleLargeMontserratPrimary =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratPrimaryBold =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratPrimaryBold_1 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserratPrimaryExtraBold =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNotoSansGray500 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimarySemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get kameron {
    return copyWith(
      fontFamily: 'Kameron',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
