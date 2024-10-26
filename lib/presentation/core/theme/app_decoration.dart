import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillOnPrimary =>
      BoxDecoration(color: theme.colorScheme.onPrimary);
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.white900,
        border: Border.all(color: appTheme.blueGray100, width: 0.267.w),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.2),
            spreadRadius: 0.53.w,
            blurRadius: 0.53.w,
            offset: const Offset(0, 8),
          ),
        ],
      );
  static BoxDecoration get fillPrimaryContainer =>
      BoxDecoration(color: theme.colorScheme.primaryContainer);
  static BoxDecoration get fillWhiteA =>
      BoxDecoration(color: appTheme.white900);

  // Gradient decorations
  static BoxDecoration get gradientCyanToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 0),
          end: const Alignment(1, 0),
          colors: [appTheme.cyan500, appTheme.indigoA100, appTheme.pink300],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.white900,
        border: Border.all(color: appTheme.black900, width: 1.067.w),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.black900,
        border: Border.all(color: theme.colorScheme.primary, width: 0.267.w),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder28 => BorderRadius.circular(7.467.w);
  static BorderRadius get circleBorder48 => BorderRadius.circular(12.8.w);
  static BorderRadius get circleBorder21 => BorderRadius.circular(5.6.w);
  static BorderRadius get circleBorder12 => BorderRadius.circular(3.2.w);
  static BorderRadius get circleBorder56 => BorderRadius.circular(14.93.w);

  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(1.067.w);
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
