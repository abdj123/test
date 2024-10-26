import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

// import '../../../domain/user-profile/entities/user_profile.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../domain/user-profile/entities/user_profile.dart';
import '../../core/theme/app_decoration.dart';
import '../../core/theme/custom_button_style.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_router.dart';

class EditProfilePage extends StatefulWidget {
  final UserProfile model;
  const EditProfilePage({super.key, required this.model});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _usernameController = TextEditingController();
  Uint8List? image;

  @override
  void initState() {
    _usernameController.text = widget.model.username;
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF121212),
      appBar: _buildAppbar(context),
      body: SingleChildScrollView(
        child: SizedBox(
            width: 100.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildProfileImage(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.7),
                              width: 0.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "This could be your first name, or a nickname.\nIt's how you'll appear on TicketTree",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 10.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () async {},
                        child: Text(
                          "Change name",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12.sp),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomElevatedButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());
                          context.go(AppRouter.loginRoute);
                        },
                        width: 45.6.w,
                        text: "Log out",
                        buttonStyle: CustomButtonStyles.fillWhiteATL19,
                        buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                          color: appTheme.black900,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomElevatedButton(
                        onPressed: () {
                          _showDeleteConfirmationDialog(context);
                        },
                        width: 45.6.w,
                        text: "Delete Account",
                        buttonStyle: CustomButtonStyles.fillRedATL19,
                        buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                          color: appTheme.white900,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Column _buildProfileImage() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.w),
          width: 60.w,
          height: 60.w,
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadius.circular(30.w),
          ),
          child: image != null
              ? Image.memory(image!)
              : CustomImageView(
                  imagePath:
                      widget.model.imagePath ?? ImageConstant.imgLockGray40001,
                  fit: BoxFit.cover,
                ),
        ),
        TextButton(
          onPressed: () async {},
          child: Text(
            "Change photo",
            style: TextStyle(
                color: Colors.white.withOpacity(0.7), fontSize: 12.sp),
          ),
        ),
      ],
    );
  }

  CustomAppBar _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 20.w,
      leading: TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white.withOpacity(0.7)),
          )),
      title: const Text("Edit Profile"),
      actions: [
        TextButton(
          onPressed: () {
            // FirestoreMethods.saveUserData(
            //   widget.model,
            //   _usernameController.text,
            //   image,
            // );
            // Navigator.pop(context);
          },
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white.withOpacity(0.7)),
          ),
        ),
      ],
      centerTitle: true,
    );
  }

  Future<void> _showDeleteConfirmationDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          title: const Text(
            "Delete your Account?",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          content: const Text(
            '''If you select Delete we will delete your account on our server.

Your app data will also be deleted and you won't be able to retrieve it.

Since this is a security-sensitive operation, you eventually are asked to login before your account can be deleted.''',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onPressed: () async {
                context.read<AuthBloc>().add(const AuthEvent.deleteAccount());
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Account deleted successfully'),
                  backgroundColor: Colors.green,
                ));

                context.go(AppRouter.registerRoute);
              },
              child: Text(
                "Delete",
                style: TextStyle(fontSize: 16, color: appTheme.black900),
              ),
            ),
          ],
        );
      },
    );
  }
}
