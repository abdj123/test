import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/profile/profile_bloc.dart';

import '../../../application/favorites/favorites_bloc.dart';
import '../../../domain/venues/entities/venue_details.dart';
import '../../../domain/venues/entities/venue.dart';
import '../../core/utils/image_constants.dart';
import '../../pages/event-details/event_detail_page.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/widgets/custom_image_view.dart';

class VenueDetailPage extends StatefulWidget {
  final Venue venueOverview;
  const VenueDetailPage({super.key, required this.venueOverview});

  @override
  State<VenueDetailPage> createState() => _VenueDetailPageState();
}

class _VenueDetailPageState extends State<VenueDetailPage> {
  @override
  Widget build(BuildContext context) {
    final bottomHeight = 10.h;
    return _buildVenueScreen(
      context,
      bottomHeight,
      VenueDetails(
          id: widget.venueOverview.id,
          name: widget.venueOverview.name,
          imageUrl:
              widget.venueOverview.imageUrl ?? ImageConstant.imageNotFound,
          address: widget.venueOverview.fullAddress,
          city: widget.venueOverview.city ?? '',
          events: [],
          likes: 0),
    );
    // return FutureBuilder(
    //     future: Future.delayed(Duration.zero),
    //     // future: FirestoreMethods.getLikedVenueIds(
    //     //     FirebaseAuth.instance.currentUser!.uid),
    //     builder: (context, likedSnapshot) {
    //       if (likedSnapshot.connectionState == ConnectionState.waiting) {
    //         return const Scaffold(
    //           body: Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         );
    //       }
    //       final likedVenueIds = likedSnapshot.data as List;
    //       // final venueOverview = widget.venueOverview;
    //       if (widget.venueDetail != null) {
    //         final venue = widget.venueDetail!;
    //         return _buildVenueScreen(context, bottomHeight,
    //             venue.copyWith(isLiked: likedVenueIds.contains(venue.id)));
    //       }
    //       return FutureBuilder(
    //           future: Future.delayed(Duration.zero),
    //           // future: FirestoreMethods.getVenueById(venueOverview.id),
    //           builder: (context, snapshot) {
    //             if (snapshot.connectionState == ConnectionState.waiting) {
    //               return const Scaffold(
    //                 body: Center(
    //                   child: CircularProgressIndicator(),
    //                 ),
    //               );
    //             }
    //             if (snapshot.hasError) {
    //               return Scaffold(
    //                 body: Center(
    //                   child: Text('Error: ${snapshot.error}'),
    //                 ),
    //               );
    //             }
    //             final venue = snapshot.data as VenueDetails;
    //             return _buildVenueScreen(context, bottomHeight,
    //                 venue.copyWith(isLiked: likedVenueIds.contains(venue.id)));
    //           });
    //     });
  }

  Scaffold _buildVenueScreen(
      BuildContext context, double bottomHeight, VenueDetails venue) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: TextButton(
              style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.zero),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                radius: 12.sp,
                child: const Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: 2 * bottomHeight,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                venue.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: appTheme.white900,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatefulBuilder(builder: (context, setState) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: venue.imageUrl,
                        height: 20.w,
                        width: 20.w,
                      ),
                      SizedBox(width: 3.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${venue.likes}',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: appTheme.cyan500,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'like this venue',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // FirestoreMethods.likeVenue(
                          //         FirebaseAuth.instance.currentUser!.uid,
                          //         venue.id,
                          //         !venue.isLiked)
                          //     .then((value) => setState(() {
                          //           venue.isLiked = !venue.isLiked;
                          //           venue.likes = venue.isLiked
                          //               ? venue.likes + 1
                          //               : venue.likes - 1;
                          //         }))
                          //     .catchError((e) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //       SnackBar(
                          //           content: Text("Error: ${e.toString()}")));
                          // });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 1.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.w),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFFF6699).withOpacity(0.17),
                                const Color(0xFFFF6699).withOpacity(0.05),
                              ],
                            ),
                          ),
                          child: BlocBuilder<FavoritesBloc, FavoritesState>(
                            builder: (context, state) {
                              return Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      var uid = '';
                                      context
                                          .read<ProfileBloc>()
                                          .state
                                          .mapOrNull(
                                              loaded: (value) => uid = value
                                                  .profile.uid
                                                  .getOrCrash());
                                      state.mapOrNull(
                                          loaded: (value) => value
                                                  .favorites.venueIds
                                                  .contains(
                                                      venue.id.getOrCrash())
                                              ? context
                                                  .read<FavoritesBloc>()
                                                  .add(FavoritesEvent
                                                      .removeVenueFromFavorites(
                                                          uid,
                                                          venue.id
                                                              .getOrCrash()))
                                              : context
                                                  .read<FavoritesBloc>()
                                                  .add(FavoritesEvent
                                                      .addVenueToFavorites(
                                                    uid,
                                                    venue.id.getOrCrash(),
                                                  )));
                                    },
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.black,
                                      child: state.maybeMap(
                                        loaded: (value) => Icon(
                                          value.favorites.venueIds.contains(
                                                  venue.id.getOrCrash())
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                        orElse: () =>
                                            const CircularProgressIndicator(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    'LIKE',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: appTheme.white900,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                SizedBox(height: 8.w),
                Text("Subtitle",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 6.w),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 8.w),
                Text("Location",
                    style: TextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 6.w),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.w),
                    color: const Color(0xFF2C2C2E),
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.locationImg,
                        height: 35.w,
                        width: 35.w,
                        radius: BorderRadius.only(
                          topLeft: Radius.circular(5.w),
                          bottomLeft: Radius.circular(5.w),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      SizedBox(
                        height: 35.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(),
                            SizedBox(
                              width: 50.w,
                              child: Text(
                                venue.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 1.w),
                            SizedBox(
                              width: 55.w,
                              child: Text(
                                "${venue.address}, ${venue.city}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              style: ButtonStyle(
                                padding:
                                    WidgetStateProperty.all(EdgeInsets.zero),
                                minimumSize:
                                    WidgetStateProperty.all(const Size(0, 0)),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Get directions',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.w),
                if (venue.events.isNotEmpty)
                  Text(
                    'Upcoming Events',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                  ),
                FutureBuilder(
                  future: Future.delayed(Duration.zero),
                  // future: CooltixServices.getEventsByIds(venue.events),
                  builder: (context, state) {
                    if (state.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    // final events = state.data as List<Event>;
                    final events = [];
                    return Column(
                        children: List.generate(
                      venue.events.length,
                      (index) {
                        final event = events[index];
                        return FutureBuilder(
                            // future: FirestoreMethods.getLikedEventIds(
                            //     FirebaseAuth.instance.currentUser!.uid),
                            future: Future.delayed(Duration.zero),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              final likedEventIds = snapshot.data as List;
                              ;
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                          builder: (context) => EventDetailPage(
                                              event.copyWith(
                                                  isLiked: likedEventIds
                                                      .contains(event.id))),
                                        ))
                                        .then((value) => setState(() {}));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          CustomImageView(
                                              imagePath: event.coverImageUrl,
                                              height: 42.w,
                                              width: 42.w,
                                              fit: BoxFit.cover,
                                              radius:
                                                  BorderRadius.circular(10.sp)),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: StatefulBuilder(
                                                builder: (context, setState) {
                                              return IconButton(
                                                onPressed: () {
                                                  // FirestoreMethods.likeEvent(
                                                  //         FirebaseAuth.instance
                                                  //             .currentUser!.uid,
                                                  //         event.id!,
                                                  //         !event.isLiked)
                                                  //     .then((value) =>
                                                  //         setState(() {
                                                  //           event.isLiked =
                                                  //               !event.isLiked;
                                                  //         }))
                                                  //     .catchError((e) {
                                                  //   ScaffoldMessenger.of(
                                                  //           context)
                                                  //       .showSnackBar(SnackBar(
                                                  //           content: Text(
                                                  //               "Error: ${e.toString()}")));
                                                  // });
                                                },
                                                icon: CircleAvatar(
                                                  backgroundColor: Colors.black
                                                      .withOpacity(0.7),
                                                  child: Icon(
                                                    event.isLiked
                                                        ? Icons.favorite_rounded
                                                        : Icons.favorite_border,
                                                    color: event.isLiked
                                                        ? const Color(
                                                            0xFF00CCCC)
                                                        : Colors.white,
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 4.w),
                                      SizedBox(
                                        height: 44.w,
                                        width: 47.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    width: 47.w,
                                                    child: Text(
                                                        event.venue.name,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.6),
                                                            fontSize: 11.sp))),
                                                SizedBox(
                                                    width: 47.w,
                                                    child: Text.rich(
                                                      TextSpan(children: [
                                                        TextSpan(
                                                            text: DateFormat
                                                                    .MMMMd()
                                                                .format(event
                                                                    .startDate),
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .cyan500,
                                                                fontSize:
                                                                    11.sp)),
                                                        TextSpan(
                                                            text: ' | ',
                                                            style: TextStyle(
                                                                color: const Color(
                                                                        0xFFEBEBF5)
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize: 11.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        TextSpan(
                                                            text: DateFormat
                                                                    .jm()
                                                                .format(event
                                                                    .startDate),
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .cyan500,
                                                                fontSize:
                                                                    11.sp)),
                                                      ]),
                                                    )),
                                                SizedBox(
                                                    width: 47.w,
                                                    child: Text(event.name,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 0))),
                                                // if (event
                                                //     .contains('guest list'))
                                                Text('Guest List: Yes',
                                                    style: TextStyle(
                                                        color: appTheme.cyan500,
                                                        fontSize: 11.sp)),
                                              ],
                                            ),
                                            // if (event.contains('early bird'))
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        WidgetStateProperty.all(
                                                            const Color(
                                                                0xFF1C1C1E)),
                                                    padding:
                                                        WidgetStateProperty.all(
                                                            EdgeInsets.only(
                                                                top: 5.sp,
                                                                bottom: 6.sp,
                                                                left: 3.w,
                                                                right: 3.w)),
                                                    minimumSize:
                                                        WidgetStateProperty.all(
                                                            const Size(0, 0)),
                                                  ),
                                                  onPressed: () {
                                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => TicketDetailScreen(order)));
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Text('Early Bird ',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 11.5.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      Icon(Icons.info,
                                                          color: Colors.white,
                                                          size: 16.sp),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    ));
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
