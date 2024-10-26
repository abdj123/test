import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';

class ChangeLocationPage extends StatefulWidget {
  const ChangeLocationPage({super.key});

  @override
  State<ChangeLocationPage> createState() => _ChangeLocationScreenState();
}

class _ChangeLocationScreenState extends State<ChangeLocationPage> {
  late TextEditingController searchController;
  List<String>? cities;
  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.close_rounded,
                color: Colors.white,
              )),
          centerTitle: true,
          title: const Text('Change Location'),
          titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Figtree'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              _buildSearchBox(),
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('cities')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasError) {
                      return const Center(
                        child: Text('Something went wrong!'),
                      );
                    }
                    cities = snapshot.data!.docs
                        .where((e) => (e.data()['name'] as String)
                            .toLowerCase()
                            .contains(searchController.text.toLowerCase()))
                        .map((e) => e.id)
                        .toList();
                    return SingleChildScrollView(
                      child: Column(
                        children: cities!
                            .map((city) => ListTile(
                                title: Text(city),
                                onTap: () {
                                  FirebaseFirestore.instance
                                      .collection('users')
                                      .doc(FirebaseAuth
                                          .instance.currentUser!.uid)
                                      .update({"city": city});
                                  Navigator.of(context).pop(city);
                                }))
                            .toList(),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }

  SizedBox _buildSearchBox() {
    return SizedBox(
      height: 5.4.h,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          setState(() {});
        },
        controller: searchController,
        textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
          prefixIcon: CustomImageView(
            imagePath: ImageConstant.imgIconsPrimaryMagnify,
            // color: Colors.white,
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 13.w,
            minHeight: 8.w,
          ),
          suffixIcon: searchController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    searchController.clear();
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                  ),
                )
              : null,
          filled: true,
          fillColor: const Color(0xFF7F7F7F).withOpacity(.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular((3200 / 375).w),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
