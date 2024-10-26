import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';

class TicketreeInfo extends StatelessWidget {
  const TicketreeInfo({super.key});

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
                const SizedBox(
                  height: 25,
                ),
                reusableText("TickeTree", 17),
                reusableText("Name", 13, color: Colors.white60),
                const SizedBox(
                  height: 20,
                ),
                reusableText("Tropical Vibes, LDA", 17),
                reusableText("Registration", 13, color: Colors.white60),
                const SizedBox(
                  height: 20,
                ),
                reusableText("518067882", 17),
                reusableText("NIPC", 13, color: Colors.white60),
                const SizedBox(
                  height: 20,
                ),
                reusableText("""Rua Prista Monteiro 20
3D 1600-253 Lisboa""", 17),
                reusableText("Address", 13, color: Colors.white60),
                const SizedBox(
                  height: 20,
                ),
                reusableText("info@ticketree.me ", 17),
                reusableText("Instagram", 13, color: Colors.white60),
                const SizedBox(
                  height: 20,
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
      {Color color = const Color(0xffFFFFFF)}) {
    return Text(
      val,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w600),
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
        text: "TickeTree info",
      ),
    );
  }
}
