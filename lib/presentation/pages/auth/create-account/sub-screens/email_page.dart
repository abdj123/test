import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/custom_text_style.dart';
import '../../../../core/theme/theme_helper.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What is your email?",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleLarge23.copyWith(
              color: theme.colorScheme.onPrimary,
              fontSize: 28.sp,
              height: 1.04,
            ),
          ),
          SizedBox(height: 2.4630541871921182266.h),
          CustomTextFormField(
            // contentPadding: EdgeInsets.all(3.2.).copyWith(left: 9.w),
            // controller: widget.emailController,
            // hintText: "Email",
            textInputType: TextInputType.emailAddress,
            hintStyle: CustomTextStyles.bodyMediumGray300,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your Password.";
              }
              return null;
            },
            borderDecoration:
                TextFormFieldStyleHelper.fillOnPrimaryContainerTL20.copyWith(
                    borderRadius:
                        BorderRadius.circular(1.2315270935960591133.h)),
            filled: true,
          ),
          SizedBox(height: 2.4630541871921182266.h),
          Text(
            "You'll need to confirm this email later.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumGray300.copyWith(
              color: theme.colorScheme.onPrimary,
              fontSize: 13.sp,
              height: 1.0,
            ),
          ),
          SizedBox(height: 2.4630541871921182266.h),
          Center(
            child: CustomElevatedButton(
              text: 'Next',
              width: 26.666666666666666667.w,
              buttonTextStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}
