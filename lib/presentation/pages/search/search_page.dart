import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/search/search_bloc.dart';

import '../../../domain/events/entities/event.dart';
import '../../../domain/venues/entities/venue.dart';
import '../../../infrastructure/loging-events/event_logger.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_router.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Search TickeTree'),
        bottom: PreferredSize(
            preferredSize: Size(double.maxFinite, 5.4.h),
            child: _buildSearchBox()),
      ),
      body: _buildSearchResults(),
    ));
  }

  Widget _buildSearchBox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: SizedBox(
        height: 5.4.h,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length >= 3) {
              context.read<SearchBloc>().add(
                  SearchEvent.search(limit: 50, skip: 0, searchTerm: value));
            }
          },
          onSubmitted: (value) => context
              .read<SearchBloc>()
              .add(SearchEvent.search(limit: 50, skip: 0, searchTerm: value)),
          controller: searchController,
          textAlignVertical: TextAlignVertical.bottom,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search location, venue, event",
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
            prefixIcon: CustomImageView(
              imagePath: ImageConstant.imgIconsPrimaryMagnify,
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
      ),
    );
  }

  Widget _buildSearchResults() {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: SingleChildScrollView(
        child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: Text('Type to start seaching')),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            loaded: (state) => Column(
              children: [
                if (state.events.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Browse all events".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 4.sp,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.grey,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ...state.events.map((event) => _buildEventCard(event)),
                if (state.events.isEmpty)
                  const Center(
                    child: Text('No events found.'),
                  ),
              ],
            ),
            error: (state) => Center(
              child: Text(state.message),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildVenueCard(Venue venue) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 3.w),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xFF00FFFF),
              Color(0xFF00ECEC),
              Color(0xFF00D9D9),
              Color(0xFF00C7C7),
              Color(0xFF00B4B4),
              Color(0xFF00A3A3),
              Color(0xFF009191),
              Color(0xFF008080),
            ], stops: [
              0.0,
              0.14,
              0.29,
              0.43,
              0.57,
              0.71,
              0.86,
              1.0
            ]),
            borderRadius: BorderRadius.circular(5.w),
          ),
          width: 100.w,
          height: 25.w,
        ),
        Padding(
          padding: EdgeInsets.all(3.w),
          child: GestureDetector(
            // onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => VenueDetailScreen(venueOverview: venue))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        venue.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        venue.fullAddress,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: venue.imageUrl ?? ImageConstant.imageNotFound,
                  height: 18.w,
                  width: 18.w,
                  radius: BorderRadius.circular(3.w),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEventCard(Event event) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.w),
      child: GestureDetector(
        onTap: () => context.push(
          AppRouter.eventDetailRoute.replaceAll(':id', event.id.getOrCrash()),
          extra: event,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: event.coverImageUrl,
              width: 28.w,
              height: 28.w,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(3.w),
            ),
            SizedBox(width: 2.w),
            SizedBox(
              height: 28.w,
              width: 60.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: DateFormat.MMMd().format(event.startDate),
                          style: TextStyle(
                            fontSize: 10.5.sp,
                            fontWeight: FontWeight.w400,
                            color: appTheme.cyan500,
                          ),
                          children: [
                            TextSpan(
                              text: ' | ',
                              style: TextStyle(
                                  color:
                                      const Color(0xFFEBEBF5).withOpacity(0.6)),
                            ),
                            TextSpan(
                                text: DateFormat.jm().format(event.startDate)),
                          ],
                        ),
                      ),
                      Text(
                        event.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        // onTap: () => Navigator.of(context).push(
                        //     MaterialPageRoute(
                        //         builder: (context) => VenueDetailScreen(
                        //             venueOverview: event.venue!))),
                        child: Text(
                          event.venue.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // if (event.contains('Guest List'))
                      Row(
                        children: [
                          Text(
                            'Guest List',
                            style: TextStyle(
                              color: appTheme.cyan500,
                            ),
                          ),
                          SizedBox(width: 1.w),
                          Icon(Icons.info,
                              color: const Color(0xFFEBEBF5).withOpacity(0.6)),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('Tickets',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          SizedBox(width: 1.w),
                          Icon(
                            Icons.info,
                            color: const Color(0xFFEBEBF5).withOpacity(0.6),
                          ),
                        ],
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
    // return Padding(
    //   padding: EdgeInsets.symmetric(vertical: 2.h),
    //   child: Row(
    //     children: [
    //       CustomImageView(
    //         imagePath: event.coverImageUrl,
    //         height: 10.h,
    //         width: 10.h,
    //       ),
    //       SizedBox(width: 5.w),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(event.name,
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 14.sp,
    //                 fontWeight: FontWeight.w500,
    //               )),
    //           Text(event.venue!.name,
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 12.sp,
    //                 fontWeight: FontWeight.w400,
    //               )),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
