import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';

class AboutOurApp extends StatelessWidget {
  const AboutOurApp({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                reusableText("Features", 25),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 6),
                  child: reusableText("Event Discovery", 15,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: reusableText(
                      """Explore a vast array of events, from concerts to sports, all neatly categorised under the sheltering branches of TickeTree. Intuitive filters and search options help users find their perfect event oasis.""",
                      15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white60),
                ),

                //
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                  ),
                  child: reusableText("Ticket Purchase", 15,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: reusableText(
                      """A seamless and secure ticket purchasing experience that makes securing your spot at the hottest events a breeze.Animated ticket animations with palm leaf details confirm your purchase in style.""",
                      15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white60),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      reusableText("Version", 20),
                      reusableText("Number", 16,
                          fontWeight: FontWeight.w400, color: Colors.white60),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      reusableText("Third Party Software", 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: reusableText("Show Terms & Conditions", 16),
                      ),
                      reusableText("Show Privacy Policy", 16),
                    ],
                  ),
                ),
                SizedBox(height: 6.1576354679802955665.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text reusableText(String val, double size,
      {Color color = const Color(0xffFFFFFF),
      FontWeight fontWeight = FontWeight.w600}) {
    return Text(
      val,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
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
        text: "about our app",
      ),
    );
  }
}
