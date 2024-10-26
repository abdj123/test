import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/presentation/core/utils/image_constants.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/favorites/favorites_bloc.dart';
import '../../../application/ticket_rates/ticket_rates_bloc.dart';
import '../../../domain/events/entities/event.dart';
import '../../routes/app_router.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/widgets/custom_image_view.dart';

class EventDetailPage extends StatefulWidget {
  final Event eventModel;
  const EventDetailPage(this.eventModel, {super.key});

  @override
  State<EventDetailPage> createState() => _EventDetailPageState();
}

class _EventDetailPageState extends State<EventDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<TicketRatesBloc>().add(
        TicketRatesEvent.getTicketRates(widget.eventModel.id.getOrCrash()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppbar(context),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.eventModel.description != '')
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          widget.eventModel.description,
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 2.h),
                      ],
                    ),
                  Text(
                    'Artists',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.eventModel.artists.map((artist) {
                        return Padding(
                          padding: EdgeInsets.all(2.w),
                          child: CustomImageView(
                            imagePath: artist.imageUrl,
                            width: 30.w,
                            height: 30.w,
                            radius: BorderRadius.circular(15.w),
                            fit: BoxFit.cover,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Text(
                        'Tickets ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.greenLeafImg,
                        width: 7.w,
                        height: 10.w,
                      ),
                    ],
                  ),
                  BlocBuilder<TicketRatesBloc, TicketRatesState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () {
                          print('state: $state');
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        loaded: (value) {
                          return Column(
                            children: value.ticketRates.map(
                              (ticketRate) {
                                return ListTile(
                                  title: Row(
                                    children: [
                                      Text(
                                        ticketRate.currentPrice?.name ?? '',
                                        style: TextStyle(
                                          color: appTheme.white900,
                                        ),
                                      ),
                                      SizedBox(width: 4.sp),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.green,
                                        size: 10,
                                      ),
                                      SizedBox(width: 2.sp),
                                      Text('On Sale',
                                          style: TextStyle(
                                              color: Colors.green,
                                              letterSpacing: 0.5.sp)),
                                    ],
                                  ),
                                  subtitle: Text(
                                    'Ends on ${ticketRate.currentPrice?.validUntil.toString().split(' ')[0] ?? ''}',
                                    style: TextStyle(
                                      color: appTheme.gray40001,
                                    ),
                                  ),
                                  trailing: Text(
                                    '€ ${ticketRate.currentPrice?.price.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'Figtree',
                                      color: appTheme.white900,
                                    ),
                                  ),
                                  onTap: () => context.push(
                                    AppRouter.eventTicketsRoute.replaceAll(
                                        ':id', ticketRate.id.getOrCrash()),
                                    extra: ticketRate,
                                  ),
                                );
                              },
                            ).toList(),
                          );
                        },
                        error: (value) {
                          return Center(
                            child: Text(value.message),
                          );
                        },
                      );
                    },
                  ),
                  // CustomElevatedButton(
                  //   text: "Get Ticket".toUpperCase(),
                  //   buttonStyle: ButtonStyle(
                  //     backgroundColor:
                  //         WidgetStateProperty.all(appTheme.cyan500),
                  //   ),
                  //   buttonTextStyle: theme.textTheme.titleSmall!.copyWith(
                  //     color: appTheme.black900,
                  //     fontWeight: FontWeight.normal,
                  //   ),
                  //   onPressed: () {},
                  // ),
                  SizedBox(height: 5.h),
                  // snapshot.connectionState != ConnectionState.done
                  //     ? Shimmer.fromColors(
                  //         baseColor: Colors.grey.shade300.withOpacity(0.5),
                  //         highlightColor: Colors.grey.shade100,
                  //         enabled: true,
                  //         child: TitlePlaceholder(
                  //             lineHeight: 16, width: 30.w, lines: 1))
                  //     : (snapshot.data?.structuredContent?.imageUrls.length ??
                  //                 0) >
                  //             0
                  //         ? Text(
                  //             'Pictures',
                  //             style: TextStyle(
                  //               fontSize: 16.sp,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           )
                  //         : const SizedBox(),
                  // SizedBox(height: 1.h),
                  // snapshot.connectionState != ConnectionState.done
                  //     ? Shimmer.fromColors(
                  //         baseColor: Colors.grey.shade300.withOpacity(0.5),
                  //         highlightColor: Colors.grey.shade100,
                  //         enabled: true,
                  //         child: TitlePlaceholder(
                  //             lineHeight: 25.h, width: 100.w, lines: 2))
                  //     : Column(
                  //         children: snapshot.data?.structuredContent?.imageUrls
                  //                 .map((url) => Column(
                  //                       children: [
                  //                         CustomImageView(
                  //                             height: 25.h,
                  //                             width: 100.w,
                  //                             fit: BoxFit.cover,
                  //                             imagePath: url),
                  //                         SizedBox(height: 2.h),
                  //                       ],
                  //                     ))
                  //                 .toList() ??
                  //             [],
                  //       ),
                  // SizedBox(height: 2.h),
                  // snapshot.connectionState != ConnectionState.done
                  //     ? Shimmer.fromColors(
                  //         baseColor: Colors.grey.shade300.withOpacity(0.5),
                  //         highlightColor: Colors.grey.shade100,
                  //         enabled: true,
                  //         child: TitlePlaceholder(
                  //             lineHeight: 16, width: 30.w, lines: 1))
                  //     : (snapshot.data?.structuredContent?.videoUrls.length ??
                  //                 0) >
                  //             0
                  //         ? Text(
                  //             'Videos',
                  //             style: TextStyle(
                  //               fontSize: 16.sp,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           )
                  //         : const SizedBox(),
                  // SizedBox(height: 1.h),
                  // snapshot.connectionState != ConnectionState.done
                  //     ? Shimmer.fromColors(
                  //         baseColor: Colors.grey.shade300.withOpacity(0.5),
                  //         highlightColor: Colors.grey.shade100,
                  //         enabled: true,
                  //         child: TitlePlaceholder(
                  //             lineHeight: 25.h, width: 100.w, lines: 2))
                  //     : Column(
                  //         children: snapshot.data?.structuredContent?.videoUrls
                  //                 .map((url) => SizedBox(
                  //                       height: 30.h,
                  //                       width: 100.w,
                  //                       child: Builder(builder: (context) {
                  //                         final controller =
                  //                             YoutubePlayerController(
                  //                           params: const YoutubePlayerParams(
                  //                             mute: false,
                  //                             showControls: true,
                  //                             showFullscreenButton: true,
                  //                           ),
                  //                         );
                  //                         controller.loadVideo(url).then(
                  //                             (value) =>
                  //                                 controller.pauseVideo());

                  //                         return YoutubePlayer(
                  //                           controller: controller,
                  //                         );
                  //                       }),
                  //                     ))
                  //                 .toList() ??
                  //             []),
                  // snapshot.connectionState != ConnectionState.done
                  //     ? const SizedBox()
                  //     : SizedBox(
                  //         width: 100.w,
                  //         child: Column(
                  //           children: [
                  //             if ((snapshot.data?.products.where((product) =>
                  //                         product.name == "Guest list") ??
                  //                     [])
                  //                 .isNotEmpty)
                  //               Builder(builder: (context) {
                  //                 final product = snapshot.data?.products
                  //                     .firstWhere((product) =>
                  //                         product.name == "Guest list");
                  //                 // DateTime? startDate =
                  //                 //     product?.salesStartDate;
                  //                 // String? startTime;
                  //                 // if (startDate != null) {
                  //                 //   startTime = DateFormat.yMMMEd()
                  //                 //       .add_jm()
                  //                 //       .format(startDate);
                  //                 // }
                  //                 // DateTime? endDate =
                  //                 //     product?.salesEndDate;
                  //                 // String? endTime;
                  //                 // if (endDate != null) {
                  //                 //   endTime = DateFormat.yMMMMEEEEd()
                  //                 //       .add_jm()
                  //                 //       .format(endDate);
                  //                 // }
                  //                 return Column(
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text(
                  //                           'Guest List',
                  //                           style: TextStyle(
                  //                             fontSize: 18.sp,
                  //                             fontWeight: FontWeight.w600,
                  //                           ),
                  //                         ),
                  //                         SizedBox(width: 3.w),
                  //                         Icon(
                  //                           Icons.circle,
                  //                           color: appTheme.cyan500,
                  //                           size: 10,
                  //                         ),
                  //                         SizedBox(width: 1.5.w),
                  //                         Text('Available',
                  //                             style: TextStyle(
                  //                                 color: appTheme.cyan500,
                  //                                 letterSpacing: 0.5.sp)),
                  //                         SizedBox(width: 2.w),
                  //                         Text(
                  //                             '${product?.availableQuantity} spots'),
                  //                       ],
                  //                     ),
                  //                     if (product?.salesEndDate != null &&
                  //                         DateFormat.yMd().format(
                  //                                 product!.salesEndDate!) ==
                  //                             DateFormat.yMd().format(
                  //                                 snapshot.data!.startDate!))
                  //                       const Text(
                  //                         'Ends on event start',
                  //                         style: TextStyle(
                  //                           color: Colors.grey,
                  //                         ),
                  //                       ),
                  //                     SizedBox(height: 1.h),
                  //                     Row(
                  //                         // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //                         children: [
                  //                           Expanded(
                  //                             flex: 3,
                  //                             child: Column(
                  //                               crossAxisAlignment:
                  //                                   CrossAxisAlignment.start,
                  //                               children: [
                  //                                 Text.rich(
                  //                                   TextSpan(
                  //                                     text: 'Entry until ',
                  //                                     style: const TextStyle(
                  //                                       color: Colors.grey,
                  //                                     ),
                  //                                     children: [
                  //                                       TextSpan(
                  //                                         text: product
                  //                                                     ?.salesEndDate !=
                  //                                                 null
                  //                                             ? DateFormat
                  //                                                     .yMMMd()
                  //                                                 .add_jm()
                  //                                                 .format(product!
                  //                                                     .salesEndDate!)
                  //                                             : 'undefined',
                  //                                         style:
                  //                                             const TextStyle(
                  //                                           color: Colors.white,
                  //                                         ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                                 SizedBox(height: 0.5.h),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ])
                  //                   ],
                  //                 );
                  //               }),
                  //             // if ((snapshot.data?.products.where(
                  //             //             (product) =>
                  //             //                 product.price.value != 0) ??
                  //             //         [])
                  //             //     .isNotEmpty)
                  //             //   Column(
                  //             //     children: [
                  //             //       SizedBox(height: 5.h),
                  //             //       Row(
                  //             //         mainAxisAlignment:
                  //             //             MainAxisAlignment.center,
                  //             //         children: [
                  //             //           Text(
                  //             //             'Tickets',
                  //             //             style: TextStyle(
                  //             //               fontSize: 20.sp,
                  //             //               fontWeight: FontWeight.bold,
                  //             //             ),
                  //             //           ),
                  //             //           CustomImageView(
                  //             //             imagePath:
                  //             //                 ImageConstant.greenLeafImg,
                  //             //             width: 7.w,
                  //             //             height: 10.w,
                  //             //           ),
                  //             //         ],
                  //             //       ),
                  //             //       SizedBox(height: 2.h),
                  //             //       ...snapshot.data?.products
                  //             //               .where((product) =>
                  //             //                   product.price.value > 0)
                  //             //               .map((product) => Column(
                  //             //                     children: [
                  //             //                       Row(
                  //             //                         mainAxisAlignment:
                  //             //                             MainAxisAlignment
                  //             //                                 .spaceBetween,
                  //             //                         children: [
                  //             //                           Column(
                  //             //                             crossAxisAlignment:
                  //             //                                 CrossAxisAlignment
                  //             //                                     .start,
                  //             //                             children: [
                  //             //                               Row(
                  //             //                                 children: [
                  //             //                                   Text(
                  //             //                                     product
                  //             //                                         .name,
                  //             //                                     style: TextStyle(
                  //             //                                         fontSize:
                  //             //                                             14.sp,
                  //             //                                         fontWeight: FontWeight.w600),
                  //             //                                   ),
                  //             //                                   Padding(
                  //             //                                     padding:
                  //             //                                         EdgeInsets.symmetric(horizontal: 8.sp),
                  //             //                                     child: const Icon(
                  //             //                                         Icons
                  //             //                                             .circle,
                  //             //                                         color: Color.fromARGB(
                  //             //                                             255,
                  //             //                                             100,
                  //             //                                             255,
                  //             //                                             255),
                  //             //                                         size:
                  //             //                                             10),
                  //             //                                   ),
                  //             //                                   const Text(
                  //             //                                       'On Sale',
                  //             //                                       style:
                  //             //                                           TextStyle(color: Color.fromARGB(255, 100, 255, 255)))
                  //             //                                 ],
                  //             //                               ),
                  //             //                               Text(
                  //             //                                   'Ends on ${product.salesEndDate != null ? DateFormat.yMMMd().add_jm().format(product.salesEndDate!) : 'undefined'}',
                  //             //                                   style: const TextStyle(
                  //             //                                       color:
                  //             //                                           Colors.grey))
                  //             //                             ],
                  //             //                           ),
                  //             //                           Text(
                  //             //                             product.price
                  //             //                                 .formatted,
                  //             //                             style: TextStyle(
                  //             //                                 fontSize:
                  //             //                                     14.sp,
                  //             //                                 fontWeight:
                  //             //                                     FontWeight
                  //             //                                         .w600),
                  //             //                           ),
                  //             //                         ],
                  //             //                       ),
                  //             //                       SizedBox(height: 4.h),
                  //             //                     ],
                  //             //                   ))
                  //             //               .toList() ??
                  //             //           [],
                  //             //     ],
                  //             //   ),
                  //           ],
                  //         ),
                  //       ),
                  // SizedBox(height: 5.h),
                  // Center(
                  //   child: CustomElevatedButton(
                  //     width: 80.w,
                  //     text: "Buy Ticket".toUpperCase(),
                  //     onPressed: () {
                  //       // if (kIsWeb) {
                  //       //   // redirect to other tab
                  //       //   html.window.open(
                  //       //       'https://sandbox.cooltix.com/widget/event-products/${widget.eventModel.id}?theme=dark&primaryColorHex=03BDBF&heroStyle=hidden&locale=en',
                  //       //       'Cooltix');
                  //       //   return;
                  //       // }
                  //       // Navigator.of(context).push(
                  //       //   MaterialPageRoute(
                  //       //     builder: (context) => WebViewExample(
                  //       //       eventId: widget.eventModel.id!,
                  //       //       eventName: widget.eventModel.name,
                  //       //     ),
                  //       //   ),
                  //       // );
                  //     },
                  //     buttonStyle: ButtonStyle(
                  //       backgroundColor:
                  //           WidgetStateProperty.all(appTheme.cyan500),
                  //       foregroundColor:
                  //           WidgetStateProperty.all(appTheme.black900),
                  //     ),
                  //     buttonTextStyle: TextStyle(
                  //       fontSize: 12.sp,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 5.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppbar(BuildContext context) {
    final bottomHeight = 15.h;
    return SliverAppBar(
      leading: TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const CircleAvatar(
          child: Icon(
            Icons.close_rounded,
            color: Colors.white,
          ),
        ),
      ),
      // leadingWidth: 8.w,
      pinned: true,
      backgroundColor: Colors.black,
      expandedHeight: 2.5 * bottomHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            CustomImageView(
              imagePath: widget.eventModel.coverImageUrl,
              width: 100.w,
              height: 3 * bottomHeight,
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 5.w,
              bottom: 1.75 * bottomHeight,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.share_outlined, size: 30),
                    onPressed: () {},
                  ),
                  BlocBuilder<FavoritesBloc, FavoritesState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loaded: (value) {
                          final isLiked = value.favorites.eventIds
                              .contains(widget.eventModel.id.getOrCrash());
                          return IconButton(
                            onPressed: () {
                              var uid = '';
                              context.read<AuthBloc>().state.mapOrNull(
                                  authenticated: (value) => uid = value.uid);
                              context.read<FavoritesBloc>().add(isLiked
                                  ? FavoritesEvent.removeEventFromFavorites(
                                      uid, widget.eventModel.id.getOrCrash())
                                  : FavoritesEvent.addEventToFavorites(
                                      uid, widget.eventModel.id.getOrCrash()));
                            },
                            icon: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.7),
                              child: Icon(
                                isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    isLiked ? appTheme.cyan500 : Colors.white,
                              ),
                            ),
                          );
                        },
                        orElse: () => IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.7),
                              child: const CircularProgressIndicator()),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        titlePadding: EdgeInsets.only(bottom: bottomHeight + 1.5.h, left: 12.w),
        centerTitle: true,
        title: Text(
          widget.eventModel.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: appTheme.white900,
            fontSize: 20.sp,
            fontFamily: 'Figtree',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(100.w, bottomHeight),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 90, sigmaY: 9),
            child: Container(
              height: bottomHeight,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.w),
                    topRight: Radius.circular(8.w)),
                color: Colors.transparent.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                      vertical: 2.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => context.push(
                                  AppRouter.venueDetailRoute.replaceAll(':id',
                                      widget.eventModel.venue.id.getOrCrash()),
                                  extra: widget.eventModel.venue,
                                ),
                                child: Text(
                                  widget.eventModel.venue.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: appTheme.white900,
                                    fontSize: 14.sp,
                                    fontFamily: 'Figtree',
                                    fontWeight: FontWeight.w700,
                                    height: 1.2,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              widget.eventModel.startDate
                                  .toString()
                                  .split(' ')[0],
                              style: TextStyle(
                                color: appTheme.white900,
                                fontSize: 12.sp,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: appTheme.white900.withOpacity(0.7),
                              size: 14.sp,
                            ),
                            // snapshot.connectionState != ConnectionState.done
                            //     ? Shimmer.fromColors(
                            //         baseColor:
                            //             Colors.grey.shade300.withOpacity(0.5),
                            //         highlightColor: Colors.grey.shade100,
                            //         enabled: true,
                            //         child: TitlePlaceholder(
                            //           width: 50.w,
                            //         ))
                            SizedBox(
                              width: 80.w,
                              child: Text(
                                widget.eventModel.venue.fullAddress,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: appTheme.white900.withOpacity(0.7),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(height: 2.h),
                        // Text(
                        //   'Organiser'.toUpperCase(),
                        //   style: TextStyle(fontSize: 12.sp),
                        // ),
                        // Text(
                        //   'Organiser Name',
                        //   style: TextStyle(
                        //     color: appTheme.white900,
                        //     fontSize: 14.sp,
                        //     fontFamily: 'Figtree',
                        //     fontWeight: FontWeight.w500,
                        //     height: 0.75,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    height: 3.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.w),
                        topRight: Radius.circular(8.w),
                      ),
                      color: const Color(0xFF121212),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
