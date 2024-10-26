import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/auth_form/auth_form_bloc.dart';
import '../../../core/theme/theme_helper.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/custom_image_view.dart';
import '../../../core/widgets/custom_outlined_button.dart';



class ContinueWithButtons extends StatelessWidget {
  const ContinueWithButtons({super.key});

  @override
  Widget build(BuildContext context) {
  
    

    return Column(
      children: [
        _buildContinueWithButtons(
          context: context,
          text: "Continue with Google",
          iconPath: ImageConstant.imgGoogle,
          onPressed: () => context
              .read<AuthFormBloc>()
              .add(const AuthFormEvent.signInWithGooglePressed()),
        ),
        SizedBox(height: 1.h),
        _buildContinueWithButtons(
          context: context,
          text: "Continue with Facebook",
          iconPath: ImageConstant.imgFacebook,
          onPressed: () => context
              .read<AuthFormBloc>()
              .add(const AuthFormEvent.signInWithFacebookPressed()),
        ),
        SizedBox(height: 1.h),
        _buildContinueWithButtons(
          context: context,
          text: "Continue with Apple",
          iconPath: ImageConstant.imgUser,

          onPressed: () => context
              .read<AuthFormBloc>()
              .add(const AuthFormEvent.signInWithApplePressed()),

        ),
      ],
    );
  }

  Widget _buildContinueWithButtons({
    required BuildContext context,
    required String text,
    required String iconPath,
    VoidCallback? onPressed,
  }) {
    return CustomOutlinedButton(
      buttonStyle: OutlinedButton.styleFrom(
        side: BorderSide(width: 1, color: appTheme.gray800),
      ),
      text: text,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.w),
        child: CustomImageView(
          imagePath: iconPath,
          height: 6.4.w,
          width: 6.4.w,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
