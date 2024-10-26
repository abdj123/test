import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    super.key,
    required this.text,
    this.margin,
    this.onTap,
    this.textStyle,
  });

  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          width: 70.w,
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: textStyle ??
                CustomTextStyles.titleLarge23.copyWith(
                  color: theme.colorScheme.onPrimary,
                  height: 1.04,
                ),
          ),
        ),
      ),
    );
  }
}
