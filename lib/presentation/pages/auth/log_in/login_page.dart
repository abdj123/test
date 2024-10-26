import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/auth/auth_bloc.dart';

import '../../../../application/auth_form/auth_form_bloc.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_image_view.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../routes/app_router.dart';
import '../widgets/continue_with_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthFormBloc, AuthFormState>(
      listener: (context, state) => state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  failure.map(
                    cancelledByUser: (_) => "Cancelled",
                    serverError: (_) => "Server Error",
                    emailAlreadyInUse: (_) => "Email already in use",
                    invalidEmailAndPasswordCombination: (_) =>
                        "Invalid email and password combination",
                    userDisabled: (_) => "User disabled",
                    accountExistsWithDifferentCredential: (_) =>
                        "Account exists with different credential",
                  ),
                ),
              ),
            );
          },
          (_) {
            context.read<AuthBloc>().add(const AuthEvent.checkAuth());
            context.go(AppRouter.primaryDestinationsRoute);
          },
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: appTheme.black900,
          // appBar: _buildAppBar(context),
          body: SizedBox(
            width: 100.w,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 7.w,
                  vertical: 0.4.h,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5.h),
                    CustomImageView(
                      imagePath:
                          ImageConstant.imgTicketreeBrandmarkRgbFull191x140,
                      height: 10.h,
                      width: 15.w,
                    ),
                    SizedBox(height: 2.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgAsset42,
                      height: 3.h,
                      width: 60.w,
                    ),
                    SizedBox(height: 9.h),
                    CustomTextFormField(
                      textInputType: TextInputType.emailAddress,
                      contentPadding: EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                      hintText: "Email",
                      hintStyle: CustomTextStyles.bodyMediumGray300,
                      onChanged: (value) => context
                          .read<AuthFormBloc>()
                          .add(AuthFormEvent.emailChanged(value)),
                      borderDecoration:
                          TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                      filled: true,
                    ),
                    SizedBox(height: 1.h),
                    CustomTextFormField(
                      contentPadding: EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                      hintText: "Password",
                      hintStyle: CustomTextStyles.bodyMediumGray300,
                      onChanged: (value) => context
                          .read<AuthFormBloc>()
                          .add(AuthFormEvent.passwordChanged(value)),
                      borderDecoration:
                          TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                      filled: true,
                      obscureText: true,
                    ),
                    SizedBox(height: 0.4.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            "Forgotten password?",
                            style: CustomTextStyles.bodyMediumCyanA100.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: appTheme.cyanA100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    SizedBox(
                      width: 30.w,
                      child: CustomElevatedButton(
                        text: "Log In",
                        buttonTextStyle: theme.textTheme.titleSmall!
                            .copyWith(color: appTheme.black900),
                        onPressed: () => context.read<AuthFormBloc>().add(
                            const AuthFormEvent
                                .signInWithEmailAndPasswordPressed()),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    const ContinueWithButtons(),
                    SizedBox(height: 4.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account? ",
                          style: theme.textTheme.titleMedium,
                        ),
                        TextButton(
                          onPressed: () {
                            context.push(AppRouter.registerRoute);
                          },
                          child: Text(
                            "Sign up",
                            style:
                                CustomTextStyles.titleMediumff6afff8.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: appTheme.cyanA100,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 8.5.w,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 4.w,
          top: 1.h,
          bottom: 1.3.h,
        ),
        onTap: () {
          context.pop();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Log In",
      ),
    );
  }
}
