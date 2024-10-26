import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/order/entities/order_detail.dart';
import '../../core/utils/image_constants.dart';
import '../../core/widgets/custom_image_view.dart';

class TicketDetailPage extends StatefulWidget {
  final OrderDetail order;
  const TicketDetailPage(this.order, {super.key});

  @override
  State<TicketDetailPage> createState() => _TicketDetailPageState();
}

class _TicketDetailPageState extends State<TicketDetailPage> {
  @override
  Widget build(BuildContext context) {
    final order = widget.order;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
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
            title: const Text('Ticket'),
            actions: [
              TextButton(
                  onPressed: () {}, child: const Icon(Icons.menu_rounded))
            ],
          ),
          body: Container(
            height: 100.h,
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(order.eventImageURL),
                opacity: 0.5,
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(order.eventName, style: TextStyle(fontSize: 24.sp)),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: order.tickets.length,
                    itemBuilder: (context, index) {
                      final product = order.tickets[index];

                      return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 2.w, horizontal: 5.w),
                        child: CustomPaint(
                          painter: MyPainter(),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4.w)
                                    .copyWith(top: 2.w, bottom: 4.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 3.sp),
                                            Text(order.venue.name,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1)),
                                          ],
                                        )),
                                        SizedBox(width: 3.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text('Ticket',
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text(
                                                '${index + 1}/${order.tickets.length}',
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text('Address',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            height: 1)),
                                    Text(order.venue.fullAddress,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 2.w),
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
                                                    fontSize: 12.sp,
                                                    color: Colors.white
                                                        .withOpacity(0.8),
                                                    height: 1)),
                                            Text(
                                                DateFormat.yMMMMd().format(
                                                    order.startDate ??
                                                        DateTime.now()),
                                                style: TextStyle(
                                                    fontSize: 12.sp,
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
                                                    fontSize: 12.sp,
                                                    color: Colors.white
                                                        .withOpacity(0.8),
                                                    height: 1)),
                                            Text(
                                                DateFormat.jm().format(
                                                    order.startDate ??
                                                        DateTime.now()),
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(product["price"]["name"],
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                            '${DateFormat.yMMMMd().format(order.startDate ?? DateTime.now())} until ${DateFormat.jm().format(order.startDate ?? DateTime.now())}',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2)),
                                        Text(
                                            '${DateFormat.yMMMMd().format(order.endDate ?? DateTime.now())} until ${DateFormat.jm().format(order.endDate ?? DateTime.now())}',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2)),
                                      ],
                                    ),
                                    SizedBox(height: 5.w),
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
                                    SizedBox(height: 8.sp),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 12.sp),
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
                                                data: product['qr_code'],
                                                version: QrVersions.auto,
                                                size: 40.w,
                                              ),
                                            ),
                                          ),
                                          Text('Hosted by Organizer Name',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
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
                                height: 4.h,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 8.sp),
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
                      );
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xFF252525).withOpacity(0.9);
    path = Path();
    path.lineTo(0, size.height * 0.03);
    path.arcToPoint(Offset(size.width * 0.03, size.height * 0.03));
    // path.cubicTo(0, size.height * 0.01, size.width * 0.03, 0, size.width * 0.06, 0);
    // path.cubicTo(size.width * 0.06, 0, size.width * 0.94, 0, size.width * 0.94, 0);
    // path.cubicTo(size.width * 0.97, 0, size.width, size.height * 0.01, size.width, size.height * 0.03);
    // path.cubicTo(size.width, size.height * 0.03, size.width, size.height * 0.44, size.width, size.height * 0.44);
    // path.cubicTo(size.width * 0.98, size.height * 0.44, size.width * 0.96, size.height * 0.45, size.width * 0.96, size.height * 0.46);
    // path.cubicTo(size.width * 0.96, size.height * 0.47, size.width * 0.98, size.height * 0.49, size.width, size.height * 0.49);
    // path.cubicTo(size.width, size.height * 0.49, size.width, size.height * 0.97, size.width, size.height * 0.97);
    // path.cubicTo(size.width, size.height, size.width * 0.97, size.height, size.width * 0.94, size.height);
    // path.cubicTo(size.width * 0.94, size.height, size.width * 0.06, size.height, size.width * 0.06, size.height);
    // path.cubicTo(size.width * 0.03, size.height, 0, size.height, 0, size.height * 0.97);
    // path.cubicTo(0, size.height * 0.97, 0, size.height * 0.49, 0, size.height * 0.49);
    // path.cubicTo(0, size.height * 0.49, 0, size.height * 0.49, 0, size.height * 0.49);
    // path.cubicTo(size.width * 0.03, size.height * 0.49, size.width * 0.05, size.height * 0.48, size.width * 0.05, size.height * 0.46);
    // path.cubicTo(size.width * 0.05, size.height * 0.45, size.width * 0.03, size.height * 0.44, 0, size.height * 0.44);
    // path.cubicTo(0, size.height * 0.44, 0, size.height * 0.44, 0, size.height * 0.44);
    // path.cubicTo(0, size.height * 0.44, 0, size.height * 0.03, 0, size.height * 0.03);
    // path.cubicTo(0, size.height * 0.03, 0, size.height * 0.03, 0, size.height * 0.03);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = const Color(0xFF252525).withOpacity(0.9);
    path = Path();
    path.lineTo(0, size.height * 0.03);
    path.cubicTo(
        0, size.height * 0.01, size.width * 0.03, 0, size.width * 0.06, 0);
    path.cubicTo(
        size.width * 0.06, 0, size.width * 0.94, 0, size.width * 0.94, 0);
    path.cubicTo(size.width * 0.97, 0, size.width, size.height * 0.01,
        size.width, size.height * 0.03);
    path.cubicTo(size.width, size.height * 0.03, size.width, size.height * 0.44,
        size.width, size.height * 0.44);
    path.cubicTo(size.width * 0.98, size.height * 0.44, size.width * 0.96,
        size.height * 0.45, size.width * 0.96, size.height * 0.46);
    path.cubicTo(size.width * 0.96, size.height * 0.47, size.width * 0.98,
        size.height * 0.49, size.width, size.height * 0.49);
    path.cubicTo(size.width, size.height * 0.49, size.width, size.height * 0.97,
        size.width, size.height * 0.97);
    path.cubicTo(size.width, size.height, size.width * 0.97, size.height,
        size.width * 0.94, size.height);
    path.cubicTo(size.width * 0.94, size.height, size.width * 0.06, size.height,
        size.width * 0.06, size.height);
    path.cubicTo(
        size.width * 0.03, size.height, 0, size.height, 0, size.height * 0.97);
    path.cubicTo(
        0, size.height * 0.97, 0, size.height * 0.49, 0, size.height * 0.49);
    path.cubicTo(
        0, size.height * 0.49, 0, size.height * 0.49, 0, size.height * 0.49);
    path.cubicTo(size.width * 0.03, size.height * 0.49, size.width * 0.05,
        size.height * 0.48, size.width * 0.05, size.height * 0.46);
    path.cubicTo(size.width * 0.05, size.height * 0.45, size.width * 0.03,
        size.height * 0.44, 0, size.height * 0.44);
    path.cubicTo(
        0, size.height * 0.44, 0, size.height * 0.44, 0, size.height * 0.44);
    path.cubicTo(
        0, size.height * 0.44, 0, size.height * 0.03, 0, size.height * 0.03);
    path.cubicTo(
        0, size.height * 0.03, 0, size.height * 0.03, 0, size.height * 0.03);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
