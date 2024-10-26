import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/image_constants.dart';
import 'custom_image_view.dart';

class NotificationItem {
  final String iconpath;
  final String name;
  final String subTitle;
  final Widget page;

  const NotificationItem({
    required this.iconpath,
    required this.name,
    required this.page,
    required this.subTitle,
  });
}

class NotificationItemWidget extends StatelessWidget {
  final NotificationItem item;
  const NotificationItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomImageView(
        imagePath: item.iconpath,
        height: 24.sp,
        width: 24.sp,
        color: Colors.white,
      ),
      title: Text(
        item.name,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
      ),
      subtitle: Text(
        item.subTitle,
        style: const TextStyle(
          color: Colors.white60,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: CustomImageView(
        imagePath: ImageConstant.imgArrowRightGray10001,
        height: 24.sp,
        width: 24.sp,
      ),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => item.page)),
    );
  }
}
