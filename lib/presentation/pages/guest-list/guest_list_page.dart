import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/events/entities/event.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class GuestListPage extends StatefulWidget {
  const GuestListPage({super.key});

  @override
  State<GuestListPage> createState() => _GuestListPageState();
}

class _GuestListPageState extends State<GuestListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        appBar: AppBar(
          title: const Text('Guest Lists'),
          titleTextStyle: TextStyle(
              color: appTheme.white900,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Figtree'),
          leading: Container(),
          leadingWidth: 0,
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection('users')
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final List<String> likedEvents = [];
              if (snapshot.data!.data()!.containsKey('likedEvents')) {
                for (var id in snapshot.data!['likedEvents'] as List<dynamic>) {
                  if (id is String) {
                    likedEvents.add(id);
                  }
                }
              }
              final List<String> orderIds = [];
              if (snapshot.data!.data()!.containsKey('orders')) {
                for (var id in snapshot.data!['orders'] as List<dynamic>) {
                  if (id is String) {
                    orderIds.add(id);
                  }
                }
              }
              final city = snapshot.data!.data()!['city'];
              return FutureBuilder(
                future: Future.value([]),
                // future: CooltixServices.getGuestListEvents(orderIds),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  List<Event> events = snapshot.data;
                  if (city != null) {
                    events = events
                        .where((Event e) => e.venue.city == city)
                        .toList();
                  }
                  return ListView.builder(
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      // event.copyWith(
                      //     isLiked: likedEvents.contains(event.id.getOrCrash()));
                      return _buildGuestCard(event);
                    },
                  );
                },
              );
            }),
        // body: SizedBox(
        //   width: 100.w,
        //   child: SingleChildScrollView(
        //     child: Container(
        //       padding: EdgeInsets.symmetric(horizontal: 3.2.w),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           _buildEventModelCard(context),
        //           _buildEventModelCard(context),
        //           SizedBox(height: 2.5.h),
        //           Text("Popular Guest Lists",
        //               style: TextStyle(
        //                   color: appTheme.white900,
        //                   fontSize: 20.sp,
        //                   fontWeight: FontWeight.bold)),
        //           SizedBox(height: (2000 / 812).h),
        //           _buildExploreEvents(),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }

  Widget _buildGuestCard(Event event) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(
        //         builder: (context) => EventDetailScreen(EventModel(
        //               name: event.name,
        //               coverImageUrl: event.coverImageUrl,
        //               venue: event.venue,
        //               startDate: event.startDate,
        //               summary: event.summary,
        //               id: event.id,
        //               isLiked: event.isLiked,
        //             ))))
        //     .then((value) => setState(() {}));
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.name,
                style: TextStyle(
                  color: appTheme.white900,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>
                  //         VenueDetailScreen(venueOverview: event.venue)));
                },
                child: Text(
                  event.venue.name,
                  style: TextStyle(
                    color: appTheme.white900.withOpacity(0.6),
                    fontSize: 13.sp,
                  ),
                ),
              ),
              Text(
                event.summary,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: appTheme.white900.withOpacity(0.6),
                  fontSize: 13.sp,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: DateFormat.EEEE().format(event.startDate),
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 13.sp,
                      ),
                    ),
                    TextSpan(
                      text: ' | ',
                      style: TextStyle(
                        color: appTheme.white900.withOpacity(0.6),
                        fontSize: 13.sp,
                      ),
                    ),
                    TextSpan(
                      text: DateFormat.MMMMd().format(event.startDate),
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 13.sp,
                      ),
                    ),
                    TextSpan(
                      text: ' | ',
                      style: TextStyle(
                        color: appTheme.white900.withOpacity(0.6),
                        fontSize: 13.sp,
                      ),
                    ),
                    TextSpan(
                      text: DateFormat.jm().format(event.startDate),
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.w),
              Stack(
                children: [
                  CustomImageView(
                    imagePath: event.coverImageUrl,
                    width: 100.w,
                    height: 55.w,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(10.sp),
                  ),
                  // if (event.ticketsCount > 0)
                  Positioned(
                    right: 3.w,
                    top: 3.w,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.w),
                      decoration: BoxDecoration(
                        color: appTheme.gray900.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      child: Text(
                        "Your Ticket",
                        // "You're going ${event.ticketsCount == 1 ? '' : '+${event.ticketsCount - 1}'}",
                        style: TextStyle(
                          color: appTheme.cyan500,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3.w,
                    bottom: 3.w,
                    child: StatefulBuilder(builder: (context, setState) {
                      return IconButton(
                        onPressed: () async {
                          // FirestoreMethods.likeEvent(
                          //     FirebaseAuth.instance.currentUser!.uid,
                          //     event.id,
                          //     !event.isLiked);
                          // setState(() {
                          //   event.isLiked = !event.isLiked;
                          // });
                        },
                        icon: CircleAvatar(
                          radius: 16.sp,
                          backgroundColor: appTheme.gray900.withOpacity(0.6),
                          child: Icon(
                            event.isLiked
                                ? Icons.favorite
                                : Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                      );
                    }),
                  )
                ],
              )
            ],
          )
          // child: Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     SizedBox(
          //       width: 70.w,
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           CustomImageView(
          //             imagePath: event.coverImageUrl,
          //             width: 70.w,
          //             height: 40.w,
          //             fit: BoxFit.cover,
          //             radius: BorderRadius.circular(10.sp),
          //           ),
          //           SizedBox(height: 3.sp),
          //           Text(event.venue,
          //               maxLines: 1,
          //               overflow: TextOverflow.ellipsis,
          //               style: TextStyle(
          //                   color: const Color(0xFFEBEBF5)
          //                       .withOpacity(0.6),
          //                   fontSize: 12.sp)),
          //           Row(
          //             mainAxisAlignment:
          //                 MainAxisAlignment.spaceBetween,
          //             children: [
          //               Expanded(
          //                   child: Text(event.name,
          //                       maxLines: 2,
          //                       overflow: TextOverflow.ellipsis,
          //                       style: TextStyle(
          //                           fontSize: 14.sp,
          //                           fontWeight:
          //                               FontWeight.bold))),
          //               // TextButton(
          //               //   style: ButtonStyle(
          //               //     backgroundColor: MaterialStateProperty.all(const Color(0xFF1C1C1E)),
          //               //     padding: MaterialStateProperty.all(EdgeInsets.only(top: 5.sp, bottom: 6.sp, left: 3.w, right: 3.w)),
          //               //     minimumSize: MaterialStateProperty.all(const Size(0, 0)),
          //               //   ),
          //               //   onPressed: () {
          //               //     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => TicketDetailScreen(order)));
          //               //   },
          //               //   child: Text('Show Tickets', style: TextStyle(color: Colors.white, fontSize: 11.5.sp, fontWeight: FontWeight.w500)),
          //               // ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //     SizedBox(width: 2.w),
          //     Expanded(
          //       child: SizedBox(
          //         height: 40.w,
          //         child: Column(
          //           mainAxisAlignment:
          //               MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               "You're going ${event.ticketsCount == 1 ? '' : '+${event.ticketsCount - 1}'}",
          //               style: TextStyle(
          //                   fontSize: 11.sp,
          //                   fontWeight: FontWeight.w500,
          //                   color: event.ticketsCount == 0
          //                       ? Colors.transparent
          //                       : appTheme.cyan500),
          //             ),
          //             Container(
          //               height: 14.w,
          //               width: 14.w,
          //               decoration: BoxDecoration(
          //                 color: const Color(0xFF252525)
          //                     .withOpacity(0.55),
          //                 borderRadius:
          //                     BorderRadius.circular(20.w),
          //                 border:
          //                     Border.all(color: appTheme.cyan500),
          //               ),
          //               child: Column(
          //                 mainAxisAlignment:
          //                     MainAxisAlignment.center,
          //                 children: [
          //                   Text(
          //                       DateFormat.MMM()
          //                           .format(event.startDate)
          //                           .toUpperCase(),
          //                       style:
          //                           TextStyle(fontSize: 10.sp)),
          //                   Text(
          //                     event.startDate.day.toString(),
          //                     style: TextStyle(
          //                         fontSize: 14.sp,
          //                         fontWeight: FontWeight.w600),
          //                   ),
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }

  Widget _buildEventModelCard(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 90.w,
        margin: EdgeInsets.symmetric(vertical: 3.2.w).copyWith(right: 3.2.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.clubImg,
                  fit: BoxFit.cover,
                  height: 40.w,
                  width: 100.w,
                  radius: BorderRadius.circular(5.w)
                      .copyWith(topRight: Radius.circular(30.w)),
                ),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.w),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(13.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(-2, 3),
                          ),
                        ]),
                    alignment: Alignment.center,
                    height: 15.w,
                    width: 15.w,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('March'),
                        Text('12'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CLUB NAME',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 12.sp,
                        height: 1,
                      ),
                    ),
                    Text(
                      'Event Name',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: (800 / 375).w, vertical: (400 / 812).h),
                  margin: EdgeInsets.only(right: (1800 / 375).w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((1800 / 375).w),
                    border: Border.all(
                      color: appTheme.cyan500,
                    ),
                  ),
                  child: Text(
                    "Get Ticket",
                    style: TextStyle(
                      color: appTheme.cyan500,
                      fontSize: 14.sp,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: appTheme.cyan500,
                  size: 18.sp,
                ),
                SizedBox(
                  width: (30000 / 375).w,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreEvents() {
    return SizedBox(
        height: 30.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin:
                  EdgeInsets.symmetric(horizontal: 1.w).copyWith(right: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.w),
                      color: appTheme.white100,
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('CLUB NAME',
                                style: TextStyle(
                                  color: appTheme.white900,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w100,
                                )),
                            Text('Event Name',
                                style: TextStyle(
                                  color: appTheme.gray400,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.circle,
                                size: 5, color: appTheme.white900),
                            Icon(Icons.arrow_forward_rounded,
                                color: appTheme.white900),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(
                        color: appTheme.gray400,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
