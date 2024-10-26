import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/presentation/pages/account/account_page.dart';
import 'package:ticket_tree_client/presentation/pages/settings/about-us/about_us_page.dart';
import 'package:ticket_tree_client/presentation/pages/settings/help-support/help_and_support.dart';
import 'package:ticket_tree_client/presentation/pages/settings/terms-conditions/terms_conditions_page.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../core/widgets/settings_item_widget.dart';
import 'notifications-setting/notification_setting_page.dart';
import '../profile/view_profile_page.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final List<SettingsItem> _settingItems = [
    const SettingsItem(
        iconpath: ImageConstant.imgFrameGray40001,
        name: 'Account',
        page: AccountPage()),
    // SettingsItem(
    //     iconpath: ImageConstant.imgFrameGray4000124x24,
    //     name: 'Change Password',
    //     page: const Scaffold()),
    const SettingsItem(
        iconpath: ImageConstant.imgFrame24x24,
        name: 'Notifications',
        page: NotificationSettings()),
    // SettingsItem(
    //     iconpath: ImageConstant.imgFrame1,
    //     name: 'Payment methods',
    //     page: const Scaffold()),
    // const SettingsItem(
    //     iconpath: ImageConstant.imgFrame2,
    //     name: 'Privacy Settings',
    //     page: DummyPage(title: "Privacy Settings")),
    const SettingsItem(
        iconpath: ImageConstant.imgFrame3,
        name: 'Terms and Policies',
        page: TermsConditionsPage()),
    SettingsItem(
        iconpath: ImageConstant.imgFrame4,
        name: 'About TickeTree',
        page: AboutUsPage()),
    const SettingsItem(
        iconpath: ImageConstant.imgFrame5,
        name: 'Help & Support',
        page: HelpAndSupportPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 100.w,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 2.3399014778325123153.h),
            child: Column(
              children: [
                _buildProfile(context),
                ..._settingItems.map((item) => SettingsItemWidget(item: item)),
                SizedBox(height: 6.1576354679802955665.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
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
      text: "Settings",
    ),
  );
}

/// Section Widget
Widget _buildProfile(BuildContext context) {
  return BlocBuilder<ProfileBloc, ProfileState>(

      // FutureBuilder(
      //     future: Future.delayed(Duration.zero),
      // future: FirestoreMethods.getUserData(
      //     FirebaseAuth.instance.currentUser!.uid),
      builder: (context, snapshot) {
    // if (snapshot.connectionState == ConnectionState.waiting) {
    //   return const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // } else if (snapshot.hasError || snapshot.data == null) {
    //   return const Center(
    //     child: Text("Error fetching data"),
    //   );
    // }
    // final model = snapshot.data!;
    return snapshot.maybeWhen(
        loaded: (model) {
          return Padding(
            padding: EdgeInsets.only(
              left: 7.2.w,
              right: 1.8666666666666666667.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: model.imagePath ?? ImageConstant.imgLockGray40001,
                  height: 6.5270935960591133005.h,
                  width: 13.866666666666666667.w,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.6666666666666666667.w,
                    top: 0.61576354679802955665.h,
                    bottom: 1.6009852216748768473.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 0.26666666666666666667.w),
                        child: Text(
                          model.username,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 0.24630541871921182266.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ViewProfilePage(model: model)));
                        },
                        child: Text(
                          "View Profile",
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: const Color(0xFF03BDBF),
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewProfilePage(
                              model: model,
                            )));
                  },
                  icon: CustomImageView(
                    imagePath: ImageConstant.imgArrowRightGray10001,
                    height: 24.sp,
                    width: 24.sp,
                    margin: EdgeInsets.only(
                      top: 1.84729064039408867.h,
                      bottom: 1.6009852216748768473.h,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        error: (message) => Center(
              child: Text("Error fetching data: $message"),
            ),
        orElse: () => const Center(
              child: CircularProgressIndicator(),
            ));
  });
}
