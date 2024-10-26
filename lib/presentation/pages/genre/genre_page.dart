// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/custom_button_style.dart';
import '../../core/theme/custom_text_style.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/widgets/app_bar/appbar_title.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_search_view.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({super.key});

  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 1.h),
                CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                  hintStyle: CustomTextStyles.bodyMediumGray9000113,
                ),
                SizedBox(height: 4.h),
                _buildGenreModelIcons(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 11.h,
      title: AppbarTitle(
        text: "Choose a max of 6 music genres you like.",
        margin: EdgeInsets.only(left: 8.w),
      ),
    );
  }

  // Section Widget
  Widget _buildGenreModelIcons(BuildContext context) {
    return StreamBuilder(
        stream: const Stream.empty(),
        // stream: FirebaseFirestore.instance
        //     .collection('musicGenres')
        //     .where("enabled", isEqualTo: true)
        //     .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error fetching data"),
            );
          }
          // final uid = FirebaseAuth.instance.currentUser?.uid;
          final genreList = snapshot.data!.docs;
          // .map((e) => GenreModel.fromMap(e.data()))
          // .toList();
          return FutureBuilder(
              future: Future.delayed(Duration.zero),
              // future: FirestoreMethods.getSelectedGenres(uid ?? ''),
              builder: (context, selectedSnapshot) {
                if (selectedSnapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (selectedSnapshot.hasError) {
                  return const Center(
                    child: Text("Error fetching selected genres"),
                  );
                }
                return Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 35.w,
                        crossAxisCount: 3,
                        mainAxisSpacing: 5.w,
                        crossAxisSpacing: 3.w,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemCount: genreList.length,
                      itemBuilder: (context, index) {
                        return const Text('Genre Circle');
                        // Genre model = genreList[index];
                        // return GenreCircle(model: model);
                      },
                    ),
                    SizedBox(height: 6.h),
                    CustomElevatedButton(
                        width: 30.w,
                        text: "Done",
                        margin: EdgeInsets.only(left: 1.w),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumFigtreeGray900SemiBold,
                        onPressed: () async {
                          // print(context.read<GenreProvider>().selectedGenres);
                          // final genres =
                          //     context.read<GenreProvider>().selectedGenres;
                          // final uid = FirebaseAuth.instance.currentUser?.uid;
                          // await FirestoreMethods.saveGenresPreference(
                          //     genres: genres, uid: uid ?? '');
                          // Navigator.of(context).pop();
                        }
                        // onPressed: context.read<GenreProvider>().selectedGenres.isEmpty
                        //     ? () {}
                        //     : () async {
                        //       },
                        ),
                  ],
                );
              });
        });
  }
}
