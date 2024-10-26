import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/presentation/pages/settings/notifications-setting/notification_preference_page.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';
import '../../../core/widgets/notification_item_widget.dart';
import '../../account/dummy_page.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  final List<NotificationItem> _notificationItems = [
    const NotificationItem(
        subTitle: "Push",
        iconpath: ImageConstant.imgNavTicketsGray40001,
        name: 'Your Upcoming Events',
        page: NotificationPreferencePage()),
    const NotificationItem(
        subTitle: "Push",
        iconpath: ImageConstant.imgPerson,
        name: 'TickeTree Recommendations',
        page: DummyPage(title: "TickeTree Recommendations")),
    const NotificationItem(
        subTitle: "Push",
        iconpath: ImageConstant.imgMerchendise,
        name: 'Artist and Merchandise',
        page: DummyPage(title: "Artist and Merchandise")),
    const NotificationItem(
        subTitle: "Push",
        iconpath: ImageConstant.imgPalmTree,
        name: 'TickeTree Features & Tips',
        page: DummyPage(title: "TickeTree Features & Tips")),
    const NotificationItem(
        subTitle: "Push",
        iconpath: ImageConstant.imgOffers,
        name: 'TickeTree deals and guest lists?',
        page: DummyPage(title: "TickeTree deals and guest lists?")),
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
                ..._notificationItems
                    .map((item) => NotificationItemWidget(item: item)),
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
        text: "notifications",
      ),
    );
  }
}
