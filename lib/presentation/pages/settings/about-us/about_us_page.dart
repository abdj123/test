import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/presentation/pages/settings/about-us/about_our_app.dart';
import 'package:ticket_tree_client/presentation/pages/settings/about-us/dummy_page_two.dart';
import 'package:ticket_tree_client/presentation/pages/settings/about-us/ticketree_info.dart';
import 'package:ticket_tree_client/presentation/pages/settings/about-us/about_welcome_page.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';
import '../../../core/widgets/settings_item_widget.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({super.key});

  final List<SettingsItem> _settingItems = [
    const SettingsItem(
        iconpath: ImageConstant.imgPalmTree,
        name: 'Ticketree info',
        page: TicketreeInfo()),
    const SettingsItem(
        iconpath: ImageConstant.imgWelcom,
        name: 'Welcome',
        page: AboutWelcomePage(
          title: "welcome",
          bgTxt: "Welcome to TickeTree",
        )),
    const SettingsItem(
        iconpath: ImageConstant.imgAboutApp,
        name: 'About our app',
        page: AboutOurApp()),
    const SettingsItem(
        iconpath: ImageConstant.imgWhoRWE,
        name: 'Who are We',
        page: AboutWelcomePage(
          title: "who we are",
          bgTxt: "Who we are",
        )),
    const SettingsItem(
        iconpath: ImageConstant.imgChart,
        name: 'What do we stand  for',
        page: DummyPageTwo(title: "what do we stand for")),
    const SettingsItem(
        iconpath: ImageConstant.imgPlayList,
        name: 'What do we do',
        page: DummyPageTwo(title: "what do we do")),
    const SettingsItem(
        iconpath: ImageConstant.imgCommitment,
        name: 'Commitment',
        page: DummyPageTwo(title: "our commitment")),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 100.w,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 2.3399014778325123153.h),
            child: Column(
              children: [
                ..._settingItems.map((item) => SettingsItemWidget(item: item)),
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
        text: "about TickeTree",
      ),
    );
  }
}
