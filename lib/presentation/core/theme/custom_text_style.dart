import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumCyanA100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyanA100,
        fontSize: 12.sp,
      );
  static get bodyMediumGray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 13.sp,
      );
  static get bodyMediumGray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray300,
        fontSize: 13.sp,
      );
  static get bodyMediumGray9000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 12.sp,
      );
  static get bodyLargeBluegray700 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray700);
  static get bodyMedium15 =>
      theme.textTheme.bodyMedium!.copyWith(fontSize: 14.sp);
  static get bodyMediumGray10001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray10001);
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular =>
      theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400);
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumff6afff8 => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XFF6AFFF8),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumff6afff8_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: const Color(0XFF6AFFF8));
  static get bodyMediumfff5f5f5 =>
      theme.textTheme.bodyMedium!.copyWith(color: const Color(0XFFF5F5F5));
  static get bodyMediumffffffff => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XFFFFFFFF),
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray40001Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.sp,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLarge23 =>
      theme.textTheme.titleLarge!.copyWith(fontSize: 22.sp);
  static get titleMediumGray100 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.gray100);
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff6afff8 => theme.textTheme.titleMedium!.copyWith(
        color: const Color(0XFF6AFFF8),
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
        fontSize: 13.sp,
      );
  static get titleSmallRobotoBluegray70014 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.sp,
      );
  static get titleLargewhite900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.white900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.sp,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumFigtreeGray10001 =>
      theme.textTheme.titleMedium!.figtree.copyWith(color: appTheme.gray10001);
  static get titleMediumFigtreeGray10001SemiBold =>
      theme.textTheme.titleMedium!.figtree.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumFigtreeGray900 =>
      theme.textTheme.titleMedium!.figtree.copyWith(
        color: appTheme.gray900,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumFigtreeGray900SemiBold =>
      theme.textTheme.titleMedium!.figtree.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumFigtreeff6afff8 => theme.textTheme.titleMedium!.figtree
      .copyWith(color: const Color(0XFF6AFFF8));
  static get titleMediumFigtreefff5f5f5 => theme.textTheme.titleMedium!.figtree
      .copyWith(color: const Color(0XFFF5F5F5));
  static get titleSmallRobotoBluegray700 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.sp,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotowhite900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(color: appTheme.white900);
  static get titleSmallSemiBold =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600);
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(fontFamily: 'Roboto');
  }

  TextStyle get figtree {
    return copyWith(fontFamily: 'Figtree');
  }
}
