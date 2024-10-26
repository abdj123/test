import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';

class DummyPageTwo extends StatelessWidget {
  final String title;
  const DummyPageTwo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 100.w,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 2.3399014778325123153.h, left: 20, right: 20),
            child: Column(
              children: [
                const Text(
                    """Lorem ipsum dolor sit amet consectetur. Facilisis quis suspendisse quis quam. Ornare feugiat odio sed tellus pretium ipsum mi pharetra. Eu at dui bibendum orci sagittis posuere felis lacinia. Pellentesque eget sit imperdiet vivamus diam non eu tortor. Suspendisse sed cursus dui morbi cras nulla vitae. Magnis consectetur.""",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 6.1576354679802955665.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 5.0492610837438423645.h,
      leadingWidth: 12.266666666666666667.w,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 5.8666666666666666667.w,
          top: 1.477832512315270936.h,
          bottom: 0.61576354679802955665.h,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: title,
      ),
    );
  }
}
