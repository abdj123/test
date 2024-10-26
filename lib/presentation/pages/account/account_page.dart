import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../profile/edit_profile_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: _buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loaded: (profile) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User Name",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          profile.username == ""
                              ? "user name not set"
                              : profile.username,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white60),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 5),
                          title: const Text(
                            "E mail",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            profile.email,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white60),
                          ),
                          trailing: TextButton(
                            onPressed: () async {},
                            child: const Text(
                              "Change email",
                              style: TextStyle(
                                  color: Color(0xff00FFFF),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                          title: const Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          subtitle: const Text(
                            "***************",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white60),
                          ),
                          trailing: TextButton(
                            onPressed: () async {},
                            child: const Text(
                              "Change password",
                              style: TextStyle(
                                  color: Color(0xff00FFFF),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          leading: Image.asset("assets/images/app_icon.jpeg"),
                          title: const Text(
                            "TicketTree User",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Row(
                            children: [
                              const Text(
                                "Guest Lists  ",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white60),
                              ),
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Free",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: const Color(0xff00FFFF)),
                                  ))
                            ],
                          ),
                        ),
                        Text.rich(TextSpan(
                            text:
                                "To close your account yourself and delete \nyour data permanently, ",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white60),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditProfilePage(
                                                    model: profile,
                                                  )));
                                    },
                                  text: "click here.",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white))
                            ]))
                      ],
                    );
                  },
                  error: (message) => Center(
                        child: Text("Error fetching data: $message"),
                      ),
                  orElse: () => const Center(
                        child: CircularProgressIndicator(),
                      ));
            },
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
        text: "Account",
      ),
    );
  }
}
