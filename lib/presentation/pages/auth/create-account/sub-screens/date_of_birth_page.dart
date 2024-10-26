import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/theme/custom_text_style.dart';
import '../../../../core/theme/theme_helper.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class DateofBirthPage extends StatelessWidget {
  const DateofBirthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What is your date of birth?",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleLarge23.copyWith(
              color: theme.colorScheme.onPrimary,
              fontSize: 25.sp,
              height: 1.04,
            ),
          ),
          SizedBox(height: 2.4630541871921182266.h),
          SizedBox(
            height: 18.4729064039408867.h,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (date) {
                // print(date);
              },
              backgroundColor: Colors.white,
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
