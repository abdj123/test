import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';
import 'sub-screens/date_of_birth_page.dart';
import 'sub-screens/email_page.dart';
import 'sub-screens/name_page.dart';
import 'sub-screens/password_page.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccountPage> {
  final TextEditingController emailController = TextEditingController();
  int _currentIndex = 0;
  final List<Widget> pages = const [
    EmailPage(),
    PasswordPage(),
    DateofBirthPage(),
    NamePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
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
          text: "Create Account",
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 2.6666666666666666667.w),
            child: Text('${_currentIndex + 1}/${pages.length}'),
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
