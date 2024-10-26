import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/custom_button_style.dart';
import '../../core/theme/custom_text_style.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_pin_code_text_field.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 7.7333333333333333333.w,
            vertical: 0.36945812807881773399.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 47,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.8.w),
                child: Text(
                  "Verification Code",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 1.84729064039408867.h),
              Padding(
                padding: EdgeInsets.only(left: 8.8.w),
                child: Text(
                  "Fill in the verification code we sent to:",
                  style: CustomTextStyles.bodyMediumRegular,
                ),
              ),
              SizedBox(height: 0.86206896551724137931.h),
              Padding(
                padding: EdgeInsets.only(left: 15.733333333333333333.w),
                child: Text(
                  "ana.marija.prpic@icloud.com",
                  style: CustomTextStyles.labelLargeOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 6.0344827586206896552.h),
              Padding(
                padding: EdgeInsets.only(right: 0.26666666666666666667.w),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 6.1576354679802955665.h),
              CustomElevatedButton(
                height: 5.5418719211822660099.h,
                width: 28.8.w,
                text: "Submit",
                buttonStyle: CustomButtonStyles.fillWhiteA,
                buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.black900,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 2.0935960591133004926.h),
              Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Didn't recieve a code? ",
                        style: CustomTextStyles.bodyMediumffffffff,
                      ),
                      TextSpan(
                        text: "Send Again.",
                        style: CustomTextStyles.bodyMediumff6afff8.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 8.5333333333333333333.w,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 3.7333333333333333333.w,
          top: 1.3546798029556650246.h,
          bottom: 1.3546798029556650246.h,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Verification",
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
