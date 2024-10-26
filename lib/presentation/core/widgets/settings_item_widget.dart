import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/image_constants.dart';
import 'custom_image_view.dart';

class SettingsItem {
  final String iconpath;
  final String name;
  final Widget page;

  const SettingsItem({
    required this.iconpath,
    required this.name,
    required this.page,
  });
}

class SettingsItemWidget extends StatelessWidget {
  final SettingsItem item;
  const SettingsItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomImageView(
        imagePath: item.iconpath,
        height: 24.sp,
        width: 24.sp,
      ),
      title: Text(
        item.name,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
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
