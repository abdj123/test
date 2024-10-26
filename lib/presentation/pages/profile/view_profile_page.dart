import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/user-profile/entities/user_profile.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../core/widgets/custom_outlined_button.dart';
import 'edit_profile_page.dart';

class ViewProfilePage extends StatelessWidget {
  final UserProfile model;
  const ViewProfilePage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppbar(context),
            _buildEditButton(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildSpotifyFavorites(),
                    _buildSpotifyFavorites(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildSpotifyFavorites() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
          child: Text('Spotify Favorite Assets',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold)),
        ),
        // Artists
        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) => Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 1.h,
                ).copyWith(right: 4.w),
                height: 15.w,
                width: 15.w,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Artists',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildEditButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.h),
      width: 30.w,
      height: 7.h,
      child: CustomOutlinedButton(
        text: 'Edit',
        buttonStyle: ButtonStyle(
          side: WidgetStatePropertyAll(
              BorderSide(color: Colors.white, width: 0.5.sp)),
          foregroundColor: const WidgetStatePropertyAll(Colors.white),
          textStyle: WidgetStatePropertyAll(
            TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EditProfilePage(
                  model: model,
                ))),
        margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
      ),
    );
  }

  Container _buildAppbar(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 103, 103, 103),
            Color.fromARGB(255, 30, 30, 30),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              AppbarLeadingImage(
                imagePath: ImageConstant.imgArrowLeft,
                margin: EdgeInsets.only(
                  left: 6.w,
                  top: 2.h,
                  bottom: 1.h,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
                child: CustomImageView(
                  imagePath: model.imagePath ?? ImageConstant.imgLockGray40001,
                  width: 25.w,
                  height: 25.w,
                  margin: EdgeInsets.only(top: 1.h),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.username,
                    style: TextStyle(
                      color: const Color(0xFFE0E0E0),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '0',
                          // text: model.following.length.toString(),
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' followers',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Icon(Icons.circle, size: 3.sp, color: Colors.white),
                      SizedBox(width: 2.w),
                      Text.rich(
                        TextSpan(
                          text: '0',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' following',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
