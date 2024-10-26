import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/custom_text_style.dart';
import '../../../../core/theme/theme_helper.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NameScreenState();
}

class _NameScreenState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is your name?",
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
              "This will appear on your TickeTree account.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray300.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: 13.sp,
                height: 1.0,
              ),
            ),
            SizedBox(height: 1.84729064039408867.h),
            Divider(
              thickness: 0.3,
              indent: 2.6666666666666666667.w,
              endIndent: 5.3333333333333333333.w,
            ),
            SizedBox(height: 4.9261083743842364532.h),
            Text(
              'By tapping on "Create account", you agree to the TickeTree Terms of use.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray300.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: 13.sp,
                height: 1.5,
              ),
            ),
            SizedBox(height: 2.4630541871921182266.h),
            Text("Terms of use",
                style: TextStyle(
                  color: appTheme.cyan500,
                  fontSize: 14.sp,
                )),
            SizedBox(height: 1.2315270935960591133.h),
            Text(
              'By tapping on "Create account", you agree to the TickeTree Terms of use.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray300.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: 13.sp,
                height: 1.5,
              ),
            ),
            SizedBox(height: 2.4630541871921182266.h),
            Text("Privacy Policy",
                style: TextStyle(
                  color: appTheme.cyan500,
                  fontSize: 14.sp,
                )),
            SizedBox(height: 2.4630541871921182266.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 66.666666666666666667.w,
                  child: Text(
                    'I would prefer not to recieve marketing massages from TickeTree.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray300.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontSize: 13.sp,
                      height: 1.5,
                    ),
                  ),
                ),
                Checkbox(value: true, onChanged: (val) => print(val)),
              ],
            ),
            SizedBox(height: 2.4630541871921182266.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 74.666666666666666667.w,
                  child: Text(
                    "Share my registeration data with TickeTree's content providers for marketing purposes.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray300.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontSize: 13.sp,
                      height: 1.5,
                    ),
                  ),
                ),
                Checkbox(value: false, onChanged: (val) => print(val)),
              ],
            ),
            SizedBox(height: 18.4729064039408867.h),
            Center(
              child: CustomElevatedButton(
                text: 'Create Account',
                width: 53.333333333333333333.w,
                buttonTextStyle:
                    TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 4.9261083743842364532.h),
          ],
        ),
      ),
    );
  }
}
