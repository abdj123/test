import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillCyan => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.3.w),
        ),
      );
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00CCCC),
        foregroundColor: Colors.black,
        textStyle: const TextStyle(color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.4.w),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.3.w),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.white900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.867.w),
        ),
      );
  static ButtonStyle get fillWhiteATL19 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.white900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.067.w),
        ),
      );

  static ButtonStyle get fillRedATL19 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.067.w),
        ),
      );
  static ButtonStyle get fillBlack100 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.white100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.067.w),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        elevation: WidgetStateProperty.all<double>(0),
      );
}
