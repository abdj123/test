import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/custom_text_style.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 0.36945812807881773399.h),
          child: Column(
            children: [
              const Spacer(flex: 47),
              SizedBox(
                height: 6.8965517241379310345.h,
                width: 59.733333333333333333.w,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2256x56,
                      height: 56.sp,
                      width: 56.sp,
                      radius: BorderRadius.circular(
                        7.4666666666666666667.w,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2356x56,
                      height: 56.sp,
                      width: 56.sp,
                      radius: BorderRadius.circular(
                        7.4666666666666666667.w,
                      ),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 11.2.w),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2456x56,
                      height: 56.sp,
                      width: 56.sp,
                      radius: BorderRadius.circular(
                        7.4666666666666666667.w,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2556x56,
                      height: 56.sp,
                      width: 56.sp,
                      radius: BorderRadius.circular(
                        7.4666666666666666667.w,
                      ),
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 11.2.w),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2656x56,
                      height: 56.sp,
                      width: 56.sp,
                      radius: BorderRadius.circular(
                        7.4666666666666666667.w,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.2167487684729064039.h),
              Text(
                "Great picks!",
                style: CustomTextStyles.titleSmallGray100,
              ),
              SizedBox(height: 8.1280788177339901478.h),
              SizedBox(
                height: 1.9704433497536945813.h,
                child: const Text("Smooth page indicator here!"),
              ),
              const Spacer(
                flex: 52,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
