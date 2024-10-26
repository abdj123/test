import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';

class AboutWelcomePage extends StatelessWidget {
  final String title;
  final String bgTxt;
  const AboutWelcomePage({super.key, required this.title, required this.bgTxt});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 100.w,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, top: 15),
                      child: Text(
                        bgTxt,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Color(0xFF01B1B1)),
                      ),
                    ),
                    const Text(
                        """Where the world of entertainment meets the soothing sway of palm trees! Picture yourself on a virtual beach, surrounded by the rustling leaves of our TickeTree, as you embark on a journey of discovering and securing tickets for the hottest events.
          
Explore "TickeTree" - Your Gateway to Endless Events!""",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(ImageConstant.imgTicketreeLogo),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Branching Out to Unforgettable Experiences!",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff00CCCC)),
                    ),
                  ],
                ),
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
