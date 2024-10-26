import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/venues/venues_bloc.dart';
import 'package:ticket_tree_client/presentation/core/utils/image_constants.dart';

import '../../../application/events/events_bloc.dart';
import '../../../application/favorites/favorites_bloc.dart';
import '../../../domain/events/entities/event.dart';
import '../../../domain/venues/entities/venue.dart';
import '../../routes/app_router.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/widgets/custom_image_view.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<VenuesBloc>()
        .add(const VenuesEvent.getVenues(limit: 50, skip: 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Favorites'),
        leading: Container(),
        leadingWidth: 0,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child: BlocBuilder<FavoritesBloc, FavoritesState>(
            builder: (context, favState) => favState.maybeMap(
              loaded: (loadedFavs) => Column(
                children: [
                  BlocBuilder<VenuesBloc, VenuesState>(
                      builder: (context, venuesState) {
                    return venuesState.maybeMap(
                      loaded: (loadedVenues) {
                        var likedVenues = [];
                        for (var venue in loadedVenues.venues) {
                          if (loadedFavs.favorites.venueIds
                              .contains(venue.id.getOrCrash())) {
                            likedVenues.add(venue);
                          }
                        }
                        return likedVenues.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Venues',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  ...likedVenues.map((venue) =>
                                      _buildClubCard(venue, context)),
                                ],
                              )
                            : Container();
                      },
                      orElse: () => Container(),
                    );
                  }),
                  BlocBuilder<EventsBloc, EventsState>(
                      builder: (context, eventsState) {
                    return eventsState.maybeMap(
                      loaded: (loadedEvents) {
                        var likedEvents = [];
                        for (var event in loadedEvents.events.todayEvents) {
                          if (loadedFavs.favorites.eventIds
                              .contains(event.id.getOrCrash())) {
                            likedEvents.add(event);
                          }
                        }
                        for (var event in loadedEvents.events.thisWeekEvents) {
                          if (loadedFavs.favorites.eventIds
                              .contains(event.id.getOrCrash())) {
                            likedEvents.add(event);
                          }
                        }
                        for (var event in loadedEvents.events.upcomingEvents) {
                          if (loadedFavs.favorites.eventIds
                              .contains(event.id.getOrCrash())) {
                            likedEvents.add(event);
                          }
                        }
                        return likedEvents.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Events',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  ...likedEvents.map((event) =>
                                      _buildEventCard(event, context)),
                                ],
                              )
                            : Container();
                      },
                      orElse: () => Container(),
                    );
                  }),
                ],
              ),
              orElse: () => Container(),
            ),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     BlocBuilder<VenuesBloc, VenuesState>(
          //       builder: (context, venueState) => venueState.maybeMap(
          //         loaded: (value) {
          //           return Column(
          //             children: value.venues
          //                 .map(
          //                   (venue) =>
          //                       BlocBuilder<FavoritesBloc, FavoritesState>(
          //                     builder: (context, favoritesState) =>
          //                         favoritesState.maybeMap(
          //                       loaded: (value) => value.favorites.venueIds
          //                               .contains(venue.id.getOrCrash())
          //                           ? _buildClubCard(venue, context)
          //                           : Container(),
          //                       orElse: () => Container(),
          //                     ),
          //                   ),
          //                 )
          //                 .toList(),
          //           );
          //         },
          //         orElse: () => Container(),
          //       ),
          //     ),
          //     BlocBuilder<EventsBloc, EventsState>(
          //       builder: (context, eventsState) => eventsState.maybeMap(
          //           loaded: (value) {
          //             return Column(
          //               children: [
          //                 ...value.events.todayEvents.map(
          //                   (event) =>
          //                       BlocBuilder<FavoritesBloc, FavoritesState>(
          //                     builder: (context, favoritesState) =>
          //                         favoritesState.maybeMap(
          //                       loaded: (value) => value.favorites.eventIds
          //                               .contains(event.id.getOrCrash())
          //                           ? _buildEventCard(event, context)
          //                           : Container(),
          //                       orElse: () => Container(),
          //                     ),
          //                   ),
          //                 ),
          //                 ...value.events.thisWeekEvents.map(
          //                   (event) =>
          //                       BlocBuilder<FavoritesBloc, FavoritesState>(
          //                     builder: (context, favoritesState) =>
          //                         favoritesState.maybeMap(
          //                       loaded: (value) => value.favorites.eventIds
          //                               .contains(event.id.getOrCrash())
          //                           ? _buildEventCard(event, context)
          //                           : Container(),
          //                       orElse: () => Container(),
          //                     ),
          //                   ),
          //                 ),
          //                 ...value.events.upcomingEvents.map(
          //                   (event) =>
          //                       BlocBuilder<FavoritesBloc, FavoritesState>(
          //                     builder: (context, favoritesState) =>
          //                         favoritesState.maybeMap(
          //                       loaded: (value) => value.favorites.eventIds
          //                               .contains(event.id.getOrCrash())
          //                           ? _buildEventCard(event, context)
          //                           : Container(),
          //                       orElse: () => Container(),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             );
          //           },
          //           orElse: () => Container()),
          //     ),
          //     SizedBox(height: 2.h),
          //     Text(
          //       'Explore other events',
          //       style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          //     ),
          //     SizedBox(height: 1.h),
          //     _buildExploreEvents(),
          //   ],
          // ),
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

  Widget _buildEventCard(Event event, BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 2.w),
        child: GestureDetector(
          onTap: () {
            context.push(
                AppRouter.eventDetailRoute
                    .replaceAll(':id', event.id.getOrCrash()),
                extra: event);
            // Navigator.of(context)
            //     .push(MaterialPageRoute(
            //         builder: (context) => EventDetailScreen(event)))
            //     .then((value) => setState(() {}));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: event.coverImageUrl,
                height: 35.w,
                width: 35.w,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(1.w),
              ),
              SizedBox(width: 3.w),
              SizedBox(
                height: 38.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.w),
                        SizedBox(
                          width: 52.w,
                          child: Text(event.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  height: 1,
                                  color: appTheme.white900,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(height: 1.w),
                        SizedBox(
                          width: 52.w,
                          child: Text(
                            event.summary,
                            style: TextStyle(
                              color: appTheme.gray400,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(
                        //   width: 45.w,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       // TextButton(
                        //       //   style: ButtonStyle(
                        //       //     padding: MaterialStateProperty.all<EdgeInsets>(
                        //       //       EdgeInsets.zero,
                        //       //     ),
                        //       //   ),
                        //       //   onPressed: null,
                        //       //   child: Text('€ 20.00',
                        //       //       style: TextStyle(color: appTheme.white900)),
                        //       // ),
                        //       TextButton(
                        //         style: ButtonStyle(
                        //           padding: MaterialStateProperty.all<EdgeInsets>(
                        //             EdgeInsets.zero,
                        //           ),
                        //         ),
                        //         onPressed: () {},
                        //         child: const Text('GUEST LIST',
                        //             style: TextStyle(fontWeight: FontWeight.normal)),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // !event.contains('guest list')
                        //     ? const SizedBox()
                        //     : Text('Guest List',
                        //         style: TextStyle(
                        //             color: appTheme.cyan500, fontSize: 10.sp)),
                        // SizedBox(height: 1.w),
                        // CustomElevatedButton(
                        //   width: 35.w,
                        //   height: 10.w,
                        //   buttonStyle: ButtonStyle(
                        //     backgroundColor: MaterialStateProperty.all<Color>(
                        //       appTheme.white100,
                        //     ),
                        //   ),
                        //   text: 'Get Ticket',
                        //   onPressed: () {},
                        // ),
                        // Spacer(),
                      ],
                    ),
                    // !event.contains('early bird')
                    //     ? const SizedBox()
                    //     : TextButton(
                    //         style: ButtonStyle(
                    //           backgroundColor: MaterialStateProperty.all(
                    //               const Color(0xFF1C1C1E)),
                    //           padding: MaterialStateProperty.all(
                    //               EdgeInsets.only(
                    //                   top: 5.sp,
                    //                   bottom: 6.sp,
                    //                   left: 3.w,
                    //                   right: 3.w)),
                    //           minimumSize:
                    //               MaterialStateProperty.all(const Size(0, 0)),
                    //         ),
                    //         onPressed: () {
                    //           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => TicketDetailScreen(order)));
                    //         },
                    //         child: Row(
                    //           children: [
                    //             Text('Early Bird ',
                    //                 style: TextStyle(
                    //                     color: Colors.white,
                    //                     fontSize: 11.5.sp,
                    //                     fontWeight: FontWeight.w500)),
                    //             Icon(Icons.info,
                    //                 color: Colors.white, size: 16.sp),
                    //           ],
                    //         ),
                    //       ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildClubCard(Venue venue, BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 1.w),
        child: GestureDetector(
          onTap: () => context.push(
            AppRouter.venueDetailRoute.replaceAll(':id', venue.id.getOrCrash()),
            extra: venue,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: venue.imageUrl ?? ImageConstant.imageNotFound,
                height: 35.w,
                width: 35.w,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(1.w),
              ),
              SizedBox(width: 3.w),
              SizedBox(
                height: 36.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: Text(venue.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  height: 1,
                                  color: appTheme.white900,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(height: 1.w),
                        SizedBox(
                          width: 50.w,
                          child: Text(
                            'No description available',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: appTheme.gray400,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

Widget _buildFilterRow() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.w),
        decoration: BoxDecoration(
          color: appTheme.cyan500,
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: Text(
          "All",
          style: TextStyle(color: Colors.black, fontSize: 14.sp),
        ),
      ),
      SizedBox(width: 2.w),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.w),
        decoration: BoxDecoration(
          color: appTheme.white100,
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: Text(
          "Latest",
          style: TextStyle(color: Colors.white, fontSize: 13.sp),
        ),
      ),
    ],
  );
}
