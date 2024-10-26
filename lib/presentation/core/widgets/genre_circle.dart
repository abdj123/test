import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/genres/entities/genre.dart';
import '../theme/app_decoration.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constants.dart';
import 'custom_image_view.dart';

class GenreCircle extends StatefulWidget {
  final Genre genre;
  const GenreCircle({super.key, required this.genre});

  @override
  State<GenreCircle> createState() => _GenreCircleState();
}

class _GenreCircleState extends State<GenreCircle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {},
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 12.h,
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: CustomImageView(
                  imagePath:
                      widget.genre.imageUrl ?? ImageConstant.imgEllipse23,
                ),
              ),
              if (widget.genre.isSelected) _buildCheckbox()
            ],
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          widget.genre.name,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }

  _buildCheckbox() {
    return Container(
      alignment: Alignment.center,
      height: 6.w,
      width: 6.w,
      decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadius.circular(6.h),
          color: const Color.fromARGB(255, 215, 215, 215)),
      child: CustomImageView(
        imagePath: ImageConstant.imgCheckmarkGray10001,
        height: 5.w,
        width: 5.w,
        color: Colors.black,
      ),
    );
  }
}
