import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/infrastructure/loging-events/event_logger.dart';

import '../../../application/events/events_bloc.dart';
import '../../../application/favorites/favorites_bloc.dart';
import '../../../application/profile/profile_bloc.dart';
import '../../../domain/events/entities/categorized_events.dart';
import '../../../domain/events/entities/event.dart';
import '../../../domain/order/entities/order_detail.dart';

import '../../routes/app_router.dart';
import '../../core/theme/custom_text_style.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/app_bar/appbar_title.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_image_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        CustomImageView(
          imagePath: ImageConstant.homeGradientBg,
          height: 100.h,
          width: 100.w,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: _buildAppbar(context),
            body: SizedBox(
              width: 100.w,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 2.h),
                  padding: EdgeInsets.symmetric(horizontal: 3.2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<ProfileBloc, ProfileState>(
                        builder: (context, snapshot) {
                          return snapshot.maybeWhen(
                            loaded: (profileData) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLocation(
                                      context, profileData.city ?? 'Lisbon'),
                                  SizedBox(height: 1.5.h),
                                  // _buildUpcomingEvent(context, snapshot.profileData!),
                                  BlocBuilder<EventsBloc, EventsState>(
                                    builder: (context, snapshot) {
                                      return snapshot.maybeWhen(
                                        loaded: (events) {
                                          return _buildEventModelIcons(
                                              context,
                                              profileData.uid.getOrCrash(),
                                              events);
                                        },
                                        error: (message) => Center(
                                          child: Text(
                                              "Error fetching events: $message"),
                                        ),
                                        orElse: () => const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                            error: (message) => Center(
                              child: Text("Error fetching data: $message"),
                            ),
                            orElse: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLocation(BuildContext context, String city) {
    return GestureDetector(
      // onTap: () => Navigator.of(context).push(
      //   MaterialPageRoute(
      //     builder: (context) => const ChangeLocationScreen(),
      //   ),
      // ),
      onTap: () {
        context.go(AppRouter.changeLocationRoute);
        AnalyticsService()
            .logEvent(name: "change city", parameters: {"city name": city});
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.locationSvgIcon,
                height: 24.sp,
                width: 24.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Events in',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: appTheme.cyan500,
                      )),
                  Text.rich(TextSpan(
                    text: city,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: 'Portugal',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )),
                ],
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Change Location',
              style: TextStyle(color: Colors.grey, fontSize: 10.sp),
            ),
          ),
        ],
      ),
    );
  }

  CustomAppBar _buildAppbar(BuildContext context) {
    return CustomAppBar(
      backgroundColor: Colors.transparent,
      title: AppbarTitle(
        text: "Good evening",
        textStyle: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.normal),
        margin: EdgeInsets.only(left: (2000 / 375).w),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            // TODO:
            context.push(AppRouter.settingsRoute);
          },
          child: CustomImageView(
            imagePath: ImageConstant.profileSvgIcon,
            // color: Colors.white,
            height: 18.sp,
            width: 18.sp,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUpcomingEvent(BuildContext context, List<String> orderIds) {
    return FutureBuilder(
      future: Future.value(null),
      // future: ChannelManagerServices.getLatestOrderedEvent(orderIds),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final OrderDetail? order = snapshot.data;
        if (order == null) {
          return const SizedBox();
        }
        return Column(
          children: [
            SizedBox(height: 1.7.h),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Transform.translate(
                        offset: Offset(-5.w, 2.h),
                        child: Transform.scale(
                            scale: 3,
                            child: CustomImageView(
                                imagePath: ImageConstant.upcomingBgLeafImg,
                                height: 20.h)))),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: order.eventImageURL,
                        height: 28.w,
                        width: 28.w,
                        fit: BoxFit.cover,
                        radius: BorderRadius.circular(8.sp)),
                    SizedBox(width: 3.w),
                    SizedBox(
                      height: 30.w,
                      width: 60.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Your Upcoming Event',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 12.sp)),
                              SizedBox(
                                  width: 55.w,
                                  child: Text(order.eventName,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          height: 0))),
                              SizedBox(
                                  width: 55.w,
                                  child: GestureDetector(
                                    // onTap: () => Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             VenueDetailScreen(
                                    //                 venueOverview:
                                    //                     Venue(
                                    //               id: event.venue.id,
                                    //               name: event.venue.name,
                                    //               coordinates:
                                    //                   event.venue.coordinates,
                                    //               city:
                                    //                   event.venue.address.city!,
                                    //             )))),
                                    child: Text(order.venue.name.toUpperCase(),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            height: 0)),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             TicketDetailScreen(event)));
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.sp),
                                        color: appTheme.gray900,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.sp, vertical: 2.sp),
                                      child: Row(
                                        children: [
                                          Text('Show Ticket ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp)),
                                          Icon(Icons.arrow_forward_ios,
                                              color: Colors.white, size: 12.sp),
                                        ],
                                      ))),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.dateCircle),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SizedBox(
                        height: 18.w,
                        width: 18.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(DateFormat.MMM().format(order.startDate!),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    height: 0)),
                            Text('${order.startDate!.day}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    height: 0)),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildEventModelIcons(
      BuildContext context, String uid, CategorizedEvents events) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (events.todayEvents.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3.h),
              Text("Tonight",
                  style: CustomTextStyles.titleLarge23.copyWith(
                      fontSize: 20.sp,
                      color: const Color(0xFFFF6699),
                      fontWeight: FontWeight.normal)),
              SizedBox(height: 1.5.h),
              _buildTonightEvents(uid, events.todayEvents, context),
            ],
          ),
        if (events.thisWeekEvents.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("This Weekend",
                  style: CustomTextStyles.titleLarge23.copyWith(
                      fontSize: 20.sp, fontWeight: FontWeight.normal)),
              SizedBox(height: 1.5.h),
              _buildThisWeekendEvents(uid, events.thisWeekEvents, context),
            ],
          ),
        if (events.upcomingEvents.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upcoming",
                style: CustomTextStyles.titleLarge23
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 1.5.h),
              _buildUpcomingEvents(uid, events.upcomingEvents, context),
            ],
          ),
      ],
    );
  }

  Widget _buildTonightEvents(
      String uid, List<Event> events, BuildContext context) {
    final CarouselSliderController controller = CarouselSliderController();
    return StatefulBuilder(builder: (context, setState) {
      return CarouselSlider(
        carouselController: controller,
        options: CarouselOptions(
          aspectRatio: 1.5,
          pageSnapping: false,
          height: 42.h,
          initialPage: 0,
          enableInfiniteScroll: false,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeFactor: 0.4,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        ),
        items: events
            .map((event) => GestureDetector(
                  onTap: () {
                    context.push(
                        AppRouter.eventDetailRoute
                            .replaceAll(':id', event.id.getOrCrash()),
                        extra: event);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: const Color(0xFFFF6699),
                          padding: EdgeInsets.only(left: 1.w),
                          child: Stack(
                            children: [
                              CustomImageView(
                                imagePath: event.coverImageUrl,
                                height: 20.h,
                                width: 100.w,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child:
                                    BlocBuilder<FavoritesBloc, FavoritesState>(
                                  builder: (context, state) {
                                    return state.maybeMap(
                                      loaded: (value) => IconButton(
                                        onPressed: () {
                                          final isLiked = value
                                              .favorites.eventIds
                                              .contains(event.id.getOrCrash());
                                          context.read<FavoritesBloc>().add(
                                              isLiked
                                                  ? FavoritesEvent
                                                      .removeEventFromFavorites(
                                                          uid,
                                                          event.id.getOrCrash())
                                                  : FavoritesEvent
                                                      .addEventToFavorites(
                                                          uid,
                                                          event.id
                                                              .getOrCrash()));
                                        },
                                        icon: CircleAvatar(
                                          backgroundColor:
                                              Colors.black.withOpacity(0.7),
                                          child: Icon(
                                            event.isLiked
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: event.isLiked
                                                ? appTheme.cyan500
                                                : Colors.white,
                                          ),
                                        ),
                                      ),
                                      orElse: () => IconButton(
                                        onPressed: () {},
                                        icon: CircleAvatar(
                                          backgroundColor:
                                              Colors.black.withOpacity(0.7),
                                          child:
                                              const CircularProgressIndicator(),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(event.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: () => context.push(
                              AppRouter.venueDetailRoute.replaceAll(
                                  ':id', event.venue.id.getOrCrash()),
                              extra: event.venue),
                          child: Text(event.venue.name,
                              style: TextStyle(
                                color: const Color(0xFFEBEBF5).withOpacity(0.6),
                                fontSize: 13.sp,
                                height: 1.5,
                              )),
                        ),
                        Text(event.summary,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: const Color(0xFFEBEBF5).withOpacity(0.6),
                                fontSize: 12.sp)),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text:
                                    DateFormat.MMMMd().format(event.startDate),
                                style: TextStyle(
                                    color: appTheme.pink300, fontSize: 13.sp)),
                            TextSpan(
                                text: ' | ',
                                style: TextStyle(
                                    color: const Color(0xFFEBEBF5)
                                        .withOpacity(0.6),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: DateFormat.jm().format(event.startDate),
                                style: TextStyle(
                                    color: appTheme.pink300, fontSize: 13.sp)),
                          ]),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      );
    });
  }

  Widget _buildThisWeekendEvents(
      String uid, List<Event> events, BuildContext context) {
    final CarouselSliderController controller = CarouselSliderController();
    return StatefulBuilder(builder: (context, setState) {
      return CarouselSlider(
        carouselController: controller,
        options: CarouselOptions(
          pageSnapping: false,
          height: 42.h,
          initialPage: 0,
          enableInfiniteScroll: false,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeFactor: 0.4,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        ),
        items: events
            .map((event) => GestureDetector(
                  onTap: () {
                    context.push(
                        AppRouter.eventDetailRoute
                            .replaceAll(':id', event.id.getOrCrash()),
                        extra: event);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CustomImageView(
                              imagePath: event.coverImageUrl,
                              height: 20.h,
                              width: 90.h,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: BlocBuilder<FavoritesBloc, FavoritesState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    loaded: (value) => IconButton(
                                      onPressed: () {
                                        final isLiked = value.favorites.eventIds
                                            .contains(event.id.getOrCrash());
                                        context.read<FavoritesBloc>().add(
                                            isLiked
                                                ? FavoritesEvent
                                                    .removeEventFromFavorites(
                                                        uid,
                                                        event.id.getOrCrash())
                                                : FavoritesEvent
                                                    .addEventToFavorites(uid,
                                                        event.id.getOrCrash()));
                                      },
                                      icon: CircleAvatar(
                                        backgroundColor:
                                            Colors.black.withOpacity(0.7),
                                        child: Icon(
                                          event.isLiked
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: event.isLiked
                                              ? appTheme.cyan500
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                    orElse: () => IconButton(
                                      onPressed: () {},
                                      icon: CircleAvatar(
                                        backgroundColor:
                                            Colors.black.withOpacity(0.7),
                                        child:
                                            const CircularProgressIndicator(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Text(event.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: () => context.push(
                              AppRouter.venueDetailRoute.replaceAll(
                                  ':id', event.venue.id.getOrCrash()),
                              extra: event.venue),
                          child: Text(event.venue.name,
                              style: TextStyle(
                                  color:
                                      const Color(0xFFEBEBF5).withOpacity(0.6),
                                  fontSize: 13.sp,
                                  height: 1.5)),
                        ),
                        Text(event.summary,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: const Color(0xFFEBEBF5).withOpacity(0.6),
                                fontSize: 12.sp)),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text:
                                    DateFormat.MMMMd().format(event.startDate),
                                style: TextStyle(
                                    color: appTheme.cyan500, fontSize: 13.sp)),
                            TextSpan(
                                text: ' | ',
                                style: TextStyle(
                                    color: const Color(0xFFEBEBF5)
                                        .withOpacity(0.6),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: DateFormat.jm().format(event.startDate),
                                style: TextStyle(
                                  color: appTheme.cyan500,
                                  fontSize: 13.sp,
                                )),
                          ]),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      );
    });
  }

  _buildUpcomingEvents(String uid, List<Event> events, BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Column(
        children: events.map((event) {
          // String? distanceString;
          // if (myCoordinates != null) {
          //   final distance =
          //       myCoordinates!.distanceTo(event.venue!.coordinates!);
          //   if (distance < 1000) {
          //     distanceString = '${distance.toStringAsFixed(2)} m from you';
          //   } else {
          //     distanceString =
          //         '${(distance / 1000).toStringAsFixed(2)} km from you';
          //   }
          // }
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: GestureDetector(
              onTap: () {
                context.push(
                    AppRouter.eventDetailRoute
                        .replaceAll(':id', event.id.getOrCrash()),
                    extra: event);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CustomImageView(
                          imagePath: event.coverImageUrl,
                          height: 42.w,
                          width: 42.w,
                          fit: BoxFit.cover,
                          radius: BorderRadius.circular(10.sp)),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: BlocBuilder<FavoritesBloc, FavoritesState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              loaded: (value) {
                                final isLiked = value.favorites.eventIds
                                    .contains(event.id.getOrCrash());
                                return IconButton(
                                  onPressed: () {
                                    context.read<FavoritesBloc>().add(isLiked
                                        ? FavoritesEvent
                                            .removeEventFromFavorites(
                                                uid, event.id.getOrCrash())
                                        : FavoritesEvent.addEventToFavorites(
                                            uid, event.id.getOrCrash()));
                                  },
                                  icon: CircleAvatar(
                                    backgroundColor:
                                        Colors.black.withOpacity(0.7),
                                    child: Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isLiked
                                          ? appTheme.cyan500
                                          : Colors.white,
                                    ),
                                  ),
                                );
                              },
                              orElse: () => IconButton(
                                onPressed: () {},
                                icon: CircleAvatar(
                                    backgroundColor:
                                        Colors.black.withOpacity(0.7),
                                    child: const CircularProgressIndicator()),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 4.w),
                  SizedBox(
                    height: 45.w,
                    width: 47.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 47.w,
                                child: GestureDetector(
                                  onTap: () => context.push(
                                      AppRouter.venueDetailRoute.replaceAll(
                                          ':id', event.venue.id.getOrCrash()),
                                      extra: event.venue),
                                  child: Text(event.venue.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 11.sp)),
                                )),
                            SizedBox(
                                width: 47.w,
                                child: Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: DateFormat.MMMMd()
                                            .format(event.startDate),
                                        style: TextStyle(
                                            color: appTheme.cyan500,
                                            fontSize: 11.sp)),
                                    TextSpan(
                                        text: ' | ',
                                        style: TextStyle(
                                            color: const Color(0xFFEBEBF5)
                                                .withOpacity(0.6),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: DateFormat.jm()
                                            .format(event.startDate),
                                        style: TextStyle(
                                            color: appTheme.cyan500,
                                            fontSize: 11.sp)),
                                  ]),
                                )),
                            SizedBox(
                                width: 47.w,
                                child: Text(event.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 0))),
                            // SizedBox(
                            //   width: 47.w,
                            //   child: distanceString != null
                            //       ? Text(
                            //           distanceString,
                            //           style: TextStyle(
                            //               fontSize: 10.sp, color: Colors.grey),
                            //         )
                            //       : const SizedBox(),
                            // ),
                            // if (event.contains('guest list'))
                            Text('Guest List: Yes',
                                style: TextStyle(
                                    color: appTheme.cyan500, fontSize: 11.sp)),
                          ],
                        ),
                        // if (event.contains('early bird'))
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    const Color(0xFF1C1C1E)),
                                padding: WidgetStateProperty.all(
                                    EdgeInsets.only(
                                        top: 5.sp,
                                        bottom: 6.sp,
                                        left: 3.w,
                                        right: 3.w)),
                                minimumSize:
                                    WidgetStateProperty.all(const Size(0, 0)),
                              ),
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => TicketDetailScreen(order)));
                              },
                              child: Row(
                                children: [
                                  Text('Early Bird ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.5.sp,
                                          fontWeight: FontWeight.w500)),
                                  Icon(Icons.info,
                                      color: Colors.white, size: 16.sp),
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
        }).toList(),
      );
    });
  }

  Widget _buildEventModelCard(BuildContext context, Event event) {
    final cardWidth = (37500 / 375).w;
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => EventDetailScreen(event),
        // ));
      },
      child: SizedBox(
        width: cardWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: event.coverImageUrl,
              fit: BoxFit.cover,
              height: 160.sp,
              width: 350.sp,
              radius: BorderRadius.only(
                topLeft: Radius.circular((1000 / 375).w),
                topRight: Radius.circular((8000 / 375).w),
                bottomLeft: Radius.circular((1000 / 375).w),
                bottomRight: Radius.circular((1000 / 375).w),
              ),
            ),
            SizedBox(height: (800 / 812).h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 53.w,
                      child: GestureDetector(
                        // onTap: () => Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         VenueDetailScreen(venueOverview: event.venue!),
                        //   ),
                        // ),
                        child: Text(
                          event.venue.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16.sp,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: cardWidth * 0.7,
                      child: Text(
                        event.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
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
                      color: Colors.white,
                    ),
                  ),
                  child: Text(
                    "Tickets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0)
                  .copyWith(bottom: (3200 / 812).h),
              child: Text(event.summary,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
