import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth_form/auth_form_bloc.dart';
import '../../../core/theme/custom_button_style.dart';
import '../../../core/theme/custom_text_style.dart';
import '../../../core/theme/theme_helper.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_image_view.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../routes/app_router.dart';
import '../widgets/continue_with_buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => "Cancelled",
                      serverError: (_) => "Unknown error occurred",
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
              // put the dob in db
              context.read<AuthBloc>().add(const AuthEvent.checkAuth());
              context.go(AppRouter.primaryDestinationsRoute);
            },
          ),
        );
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.black900,
          resizeToAvoidBottomInset: true,
          body: SizedBox(
            width: 100.w,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: 100.h,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 0.4.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgAsset42,
                        height: 2.h,
                        width: 34.w,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 6.h),
                      CustomTextFormField(
                        textInputType: TextInputType.emailAddress,
                        contentPadding:
                            EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                        hintText: "Email",
                        hintStyle: CustomTextStyles.bodyMediumGray300,
                        onChanged: (value) => context
                            .read<AuthFormBloc>()
                            .add(AuthFormEvent.emailChanged(value)),
                        borderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimaryContainerTL20,
                        filled: true,
                      ),
                      SizedBox(height: 1.2.h),
                      CustomTextFormField(
                        contentPadding:
                            EdgeInsets.all(3.2.w).copyWith(left: 9.w),
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
                      SizedBox(height: 1.2.h),
                      // Date of birth selecting field
                      BlocBuilder<AuthFormBloc, AuthFormState>(
                          builder: (context, state) {
                        print('Bloc builder recieved dob: ${state.dob}');
                        return CustomTextFormField(
                          initialValue: state.dob == null
                              ? ""
                              : "${state.dob?.year}/${state.dob?.month}/${state.dob?.day}",
                          contentPadding:
                              EdgeInsets.all(3.2.w).copyWith(left: 9.w),
                          hintText: state.dob == null
                              ? "Date of Birth"
                              : "${state.dob?.year}/${state.dob?.month}/${state.dob?.day}",
                          hintStyle: CustomTextStyles.bodyMediumGray300,
                          onChanged: (value) => context
                              .read<AuthFormBloc>()
                              .add(AuthFormEvent.dobChanged(
                                  DateTime.parse(value))),
                          borderDecoration: TextFormFieldStyleHelper
                              .fillOnPrimaryContainerTL20,
                          filled: true,
                          readOnly: true,
                          onTap: () => showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          ).then((value) {
                            if (value != null) {
                              context
                                  .read<AuthFormBloc>()
                                  .add(AuthFormEvent.dobChanged(value));
                            }
                          }),
                        );
                      }),
                      SizedBox(height: 2.5.h),
                      _buildSignUp(context),
                      const Spacer(),
                      const ContinueWithButtons(),
                      SizedBox(height: 8.h),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: theme.textTheme.titleMedium,
                            ),
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: Text(
                                "Log in",
                                style: CustomTextStyles.titleMediumff6afff8
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationColor: appTheme.cyanA100,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.7.h),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 80.w,
                          margin: EdgeInsets.only(
                            left: 1.6.w,
                            right: 2.4.w,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "By creating your account, you agree to the ",
                                  style: CustomTextStyles.bodyMediumfff5f5f5,
                                ),
                                TextSpan(
                                  text: "Terms of service",
                                  style: CustomTextStyles.bodyMediumff6afff8_1,
                                ),
                                TextSpan(
                                  text: " and ",
                                  style: CustomTextStyles.bodyMediumfff5f5f5,
                                ),
                                TextSpan(
                                  text: "Privacy policy.",
                                  style: CustomTextStyles.bodyMediumff6afff8_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 7.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign up",
      margin: EdgeInsets.only(left: (400 / 375).w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleMediumFigtreeGray900SemiBold,
      onPressed: () => context
          .read<AuthFormBloc>()
          .add(const AuthFormEvent.registerWithEmailAndPasswordPressed()),
    );
  }
}
