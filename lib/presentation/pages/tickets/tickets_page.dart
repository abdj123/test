import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_tree_client/application/events/events_bloc.dart';
import 'package:ticket_tree_client/application/profile/profile_bloc.dart';
import 'package:ticket_tree_client/application/tickets/tickets_bloc.dart';
import 'package:ticket_tree_client/domain/core/value_objects/unique_id.dart';
import 'package:ticket_tree_client/infrastructure/loging-events/event_logger.dart';
import 'package:ticket_tree_client/presentation/routes/app_router.dart';

import '../../../domain/order/entities/order_detail.dart';
import '../../../domain/venues/entities/venue.dart';
import '../../core/theme/theme_helper.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';
import '../primary-destinations/primary_destinations.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
    var paymentIds = <String>[];
    context
        .read<ProfileBloc>()
        .state
        .mapOrNull(loaded: (value) => paymentIds = value.profile.paymentIds);
    context.read<TicketsBloc>().add(TicketsEvent.getTickets(paymentIds));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Tickets',
            style: TextStyle(fontWeight: FontWeight.normal)),
        leading: Container(),
        leadingWidth: 0,
        // bottom: TabBar(
        //   tabAlignment: TabAlignment.start,
        //   isScrollable: true,
        //   controller: tabController,
        //   dividerColor: Colors.transparent,
        //   tabs: const [
        //     Tab(
        //       text: 'Upcoming Events',
        //     ),
        //     Tab(text: 'Past Events'),
        //   ],
        // ),
      ),
      body: BlocBuilder<TicketsBloc, TicketsState>(
          builder: (context, ticketsState) {
        return ticketsState.maybeMap(
          // loaded: (state) => TabBarView(controller: tabController, children: [
          //   _buildOrderWidgets(state.orders.upcomingOrders),
          //   _buildOrderWidgets(state.orders.pastOrders)
          // ]),
          loaded: (value) => ListView.builder(
              itemCount: value.payments.length,
              itemBuilder: (context, index) {
                final ticketMap = value.payments[index];
                if (ticketMap['tickets'] == null) {
                  return const SizedBox();
                }
                print('=============> ticketMap: $ticketMap');
                final order = OrderDetail(
                  paymentId:
                      UniqueId.fromUniqueString(ticketMap['payment_id'] ?? ''),
                  eventId: UniqueId.fromUniqueString(
                      ticketMap['tickets'][0]['event_id'] ?? ''),
                  eventName: ticketMap['event_name'] ?? '',
                  eventImageURL: ticketMap['event_image_url'] ?? '',
                  startDate: ticketMap['start_date'] != null
                      ? DateTime.parse(ticketMap['start_date'])
                      : null,
                  endDate: ticketMap['end_date'] != null
                      ? DateTime.parse(ticketMap['end_date'])
                      : null,
                  tickets: ticketMap['tickets'] as List<dynamic>,
                  venue: Venue.empty(),
                );
                return _buildOrderRow(order);
              }),
          error: (value) => Center(child: Text('Error: ${value.message}')),
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
        // return Scaffold(
        //   appBar: AppBar(
        //     title: const Text('Your Tickets',
        //         style: TextStyle(fontWeight: FontWeight.normal)),
        //     leading: Container(),
        //     leadingWidth: 0,
        //     bottom: TabBar(
        //       tabAlignment: TabAlignment.start,
        //       isScrollable: true,
        //       controller: tabController,
        //       dividerColor: Colors.transparent,
        //       tabs: const [
        //         Tab(
        //           text: 'Upcoming Events',
        //         ),
        //         Tab(text: 'Past Events'),
        //       ],
        //     ),
        //   ),
        //   body: FutureBuilder(
        //       future: FirebaseFirestore.instance
        //           .collection('users')
        //           .doc(FirebaseAuth.instance.currentUser!.uid)
        //           .get(),
        //       builder: (context, snapshot) {
        //         if (snapshot.connectionState == ConnectionState.waiting) {
        //           return const Center(child: CircularProgressIndicator());
        //         }

        //         final List<String> orderIds = [];
        //         if (snapshot.data!.data()!.containsKey('paymentIds')) {
        //           final results = snapshot.data!['paymentIds'] as List<dynamic>;
        //           for (var result in results) {
        //             if (result is String) {
        //               orderIds.add(result);
        //             }
        //           }
        //         }
        //         return FutureBuilder(
        //             future: Future.delayed(Duration.zero),
        //             // future: CooltixServices.getCategizedOrderDetails(orderIds),
        //             builder: (context, snapshot) {
        //               if (snapshot.connectionState == ConnectionState.waiting) {
        //                 return const Center(child: CircularProgressIndicator());
        //               }
        //               final orders = snapshot.data;
        //               return TabBarView(
        //                 controller: tabController,
        //                 children: [
        //                   _buildOrderWidgets(orders?.upcomingOrders ?? []),
        //                   _buildOrderWidgets(orders?.pastOrders ?? [])
        //                 ],
        //               );
        //             });
        //       }),
        // );
      }),
    );
  }

  _buildOrderWidgets(List<OrderDetail> orders) {
    if (orders.isEmpty) {
      return _buildNoTicket();
    }
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return _buildOrderRow(order);
      },
    );
  }

  Column _buildNoTicket() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('No tickets available',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        TextButton(
            style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
                foregroundColor: const WidgetStatePropertyAll(Colors.black),
                minimumSize: const WidgetStatePropertyAll(Size(0, 0)),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 10.sp, vertical: 5.sp))),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PrimaryDestinationsPage()));
            },
            child: Text('Explore'.toUpperCase(),
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1)))
      ],
    );
  }

  Container _buildOrderRowPrev(OrderDetail order) {
    return Container(
      margin: EdgeInsets.all(5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(order.eventName,
              style: TextStyle(
                  fontSize: 15.sp, fontWeight: FontWeight.bold, height: 1)),
          SizedBox(height: 6.sp),
          Text('Underground Party',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        DateFormat.EEEE()
                            .format(order.startDate ?? DateTime.now()),
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            height: 1)),
                    Text(order.venue.name),
                  ],
                ),
                Text(
                    DateFormat.yMMMMd()
                        .format(order.startDate ?? DateTime.now()),
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        height: 1)),
                SizedBox(
                  height: (order.tickets.length + 1) ~/ 2 * 82.w,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.48,
                      crossAxisSpacing: 3.w,
                    ),
                    itemCount: order.tickets.length,
                    itemBuilder: (context, attendeeIndex) {
                      return Stack(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            height: 76.5.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            margin: EdgeInsets.symmetric(vertical: 2.w),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: Text(order.venue.name,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 9.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 1))),
                                          SizedBox(width: 3.w),
                                          Column(
                                            children: [
                                              Text('Ticket',
                                                  style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              Text(
                                                  '${attendeeIndex + 1}/${order.tickets.length}',
                                                  style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text('Address',
                                          style: TextStyle(
                                              fontSize: 7.sp,
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              height: 1)),
                                      Text(order.venue.fullAddress,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 7.sp,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: 1.w),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Date',
                                                  style: TextStyle(
                                                      fontSize: 7.sp,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      height: 1)),
                                              Text(
                                                  DateFormat.yMMMMd().format(
                                                      order.startDate ??
                                                          DateTime.now()),
                                                  style: TextStyle(
                                                      fontSize: 7.sp,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Time',
                                                  style: TextStyle(
                                                      fontSize: 7.sp,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                      height: 1)),
                                              Text(
                                                  DateFormat.jm().format(
                                                      order.startDate ??
                                                          DateTime.now()),
                                                  style: TextStyle(
                                                      fontSize: 7.sp,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              order.tickets[attendeeIndex]
                                                  ['name'],
                                              style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontWeight: FontWeight.bold)),
                                          Text(
                                              '${DateFormat.yMMMMd().format(order.startDate ?? DateTime.now())} until ${DateFormat.jm().format(order.startDate ?? DateTime.now())}',
                                              style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2,
                                              )),
                                          Text(
                                              '${DateFormat.yMMMMd().format(order.endDate ?? DateTime.now())} until ${DateFormat.jm().format(order.endDate ?? DateTime.now())}',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2)),
                                        ],
                                      ),
                                      SizedBox(height: 4.w),
                                      Row(
                                        children: List.generate(
                                            100,
                                            (index) => Expanded(
                                                  child: Container(
                                                    color: index % 2 == 0
                                                        ? Colors.transparent
                                                        : Colors.grey,
                                                    height: 1,
                                                  ),
                                                )),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 2.w),
                                              child: ShaderMask(
                                                blendMode: BlendMode.srcIn,
                                                shaderCallback: (bounds) =>
                                                    const LinearGradient(
                                                  colors: [
                                                    Color(0xFFFF6699),
                                                    Color(0xFFED76C7),
                                                    Color(0xFFC88BEC),
                                                    Color(0xFF93A0FF),
                                                    Color(0xFF4CB1FF),
                                                    Color(0xFF00BEFD),
                                                    Color(0xFF00C7E8),
                                                    Color(0xFF00CCCC)
                                                  ],
                                                  stops: [
                                                    0.0,
                                                    0.14,
                                                    0.29,
                                                    0.43,
                                                    0.57,
                                                    0.71,
                                                    0.86,
                                                    1.0
                                                  ],
                                                ).createShader(Rect.fromLTWH(
                                                        0,
                                                        0,
                                                        bounds.width,
                                                        bounds.height)),
                                                child: QrImageView(
                                                  data: '',
                                                  version: QrVersions.auto,
                                                  size: 23.w,
                                                ),
                                              ),
                                            ),
                                            Text('Hosted by Organizer Name',
                                                style: TextStyle(
                                                    fontSize: 7.sp,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1,
                                                    color: Colors.white
                                                        .withOpacity(0.5))),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 2.7.h,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 1.w),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.ticketBtmImg,
                                    width: 16.w,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              left: -2.w,
                              top: 38.5.w,
                              child: Container(
                                height: 4.w,
                                width: 4.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0XFF121212),
                                ),
                              )),
                          Positioned(
                              right: -2.w,
                              top: 38.5.w,
                              child: Container(
                                height: 4.w,
                                width: 4.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0XFF121212),
                                ),
                              )),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildOrderRow(OrderDetail order) {
    context.read<EventsBloc>().state.mapOrNull(
      loaded: (value) {
        for (var event in [
          ...value.events.todayEvents,
          ...value.events.thisWeekEvents,
          ...value.events.upcomingEvents
        ]) {
          if (event.id.getOrCrash() == order.eventId.getOrCrash()) {
            order = order.copyWith(
                eventName: event.name,
                eventImageURL: event.coverImageUrl,
                venue: event.venue);
            break;
          }
        }
      },
    );

    return order.eventName == ''
        ? const SizedBox()
        : Container(
            margin:
                EdgeInsets.only(right: 7.w, left: 4.w, top: 2.w, bottom: 2.w),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: order.eventImageURL == ''
                      ? ImageConstant.imageNotFound
                      : order.eventImageURL,
                  fit: BoxFit.cover,
                  height: 35.w,
                  width: 35.w,
                  radius: BorderRadius.circular(2.w),
                ),
                SizedBox(width: 3.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(order.venue.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12.5.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFEBEBF5).withOpacity(0.6))),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: DateFormat.MMMEd()
                                    .format(order.startDate ?? DateTime.now()),
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    color: appTheme.cyan500)),
                            TextSpan(
                                text: ' | ',
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    color: const Color(0xFFEBEBF5)
                                        .withOpacity(0.3))),
                            TextSpan(
                                text: DateFormat.jms()
                                    .format(order.startDate ?? DateTime.now()),
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    color: appTheme.cyan500)),
                          ],
                        ),
                      ),
                      Text(order.eventName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12.5.sp, fontWeight: FontWeight.w400)),
                      SizedBox(height: 3.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("${order.tickets.length}",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold)),
                              CustomImageView(
                                imagePath: ImageConstant.greenLeafImg,
                                height: 18.sp,
                              ),
                            ],
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xFF1C1C1E)),
                              padding: WidgetStateProperty.all(EdgeInsets.only(
                                  top: 5.sp,
                                  bottom: 6.sp,
                                  left: 3.w,
                                  right: 3.w)),
                              minimumSize:
                                  WidgetStateProperty.all(const Size(0, 0)),
                            ),
                            onPressed: () {
                              context.push(AppRouter.ticketDetailsRoute,
                                  extra: order);

                              // AnalyticsService().logEvent(
                              //     name: "ticket event log",
                              //     parameters: {
                              //       "event_name": order.eventName,
                              //       "event_id": order.eventId
                              //     });
                            },
                            child: Text('Show Tickets',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
