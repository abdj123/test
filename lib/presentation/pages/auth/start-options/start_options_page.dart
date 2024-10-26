import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/theme/custom_button_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_image_view.dart';
import '../../../routes/app_router.dart';
import '../widgets/continue_with_buttons.dart';

class StartOptionsPage extends StatelessWidget {
  const StartOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SingleChildScrollView(
          child: Container(
            height: 100.h,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 0.7.h,
            ),
            child: Column(
              children: [
                const Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgTicketreeBrandmarkRgbFull191x140,
                  height: 12.h,
                  width: 18.w,
                ),
                SizedBox(height: 10.h),
                CustomImageView(
                  imagePath: ImageConstant.imgAsset52,
                  height: 5.h,
                  width: 8.w,
                ),
                SizedBox(height: 4.5.h),
                Container(
                  width: 62.w,
                  margin: EdgeInsets.only(
                    left: 11.w,
                    right: 11.w,
                  ),
                  child: Text(
                    "Your gate away \nto endless events.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 2.h),
                _buildSignUpFree(context),
                SizedBox(height: 2.h),
                const ContinueWithButtons(),
                SizedBox(height: 1.h),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRouter.loginRoute),
                  child: Text("Log In", style: theme.textTheme.titleSmall),
                ),
                SizedBox(height: 7.h),
                SizedBox(
                  width: 37.w,
                  child: Divider(
                    color: appTheme.gray90002,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpFree(BuildContext context) {
    return CustomElevatedButton(
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer.copyWith(
        backgroundColor: const WidgetStatePropertyAll(Color(0xFF66FFFF)),
        foregroundColor: const WidgetStatePropertyAll(Colors.black),
      ),
      buttonTextStyle:
          theme.textTheme.titleSmall!.copyWith(color: Colors.black),
      text: "Sign up free",
      onPressed: () => Navigator.of(context).pushNamed(AppRouter.registerRoute),
    );
  }
}
