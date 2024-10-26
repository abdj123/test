import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';
import '../../../core/widgets/custom_image_view.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({super.key});

  @override
  State<HelpAndSupportPage> createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  bool expand1 = false;
  bool expand2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.only(
                top: 2.3399014778325123153.h, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "How can we help?",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: _buildSearchBox(),
                    ),
                    const Text(
                      "How can we help?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    ListTile(
                      onTap: () => setState(() {
                        expand1 = !expand1;
                      }),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      title: const Text(
                        "Category 1",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      trailing: const Icon(Icons.navigate_next_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Visibility(
                        visible: expand1,
                        child: const Column(
                          children: [
                            ListTile(
                              title: Text("Question 1",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(Icons.navigate_next_outlined),
                            ),
                            ListTile(
                              title: Text("Question 2",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(Icons.navigate_next_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () => setState(() {
                        expand2 = !expand2;
                      }),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      title: const Text(
                        "Category 2",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      trailing: const Icon(Icons.navigate_next_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Visibility(
                        visible: expand2,
                        child: const Column(
                          children: [
                            ListTile(
                              title: Text("Question 1",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(Icons.navigate_next_outlined),
                            ),
                            ListTile(
                              title: Text("Question 2",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(Icons.navigate_next_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Still have questions?",
                        style: TextStyle(fontSize: 15),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10),
                          child: const Text(
                            "CONTACT US",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBox() {
    return SizedBox(
      height: 5.4.h,
      child: TextField(
        autofocus: true,
        textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
          prefixIcon: CustomImageView(
            imagePath: ImageConstant.imgIconsPrimaryMagnify,
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 13.w,
            minHeight: 8.w,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular((3200 / 375).w),
            borderSide: BorderSide.none,
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
        text: "help & support",
      ),
    );
  }
}
