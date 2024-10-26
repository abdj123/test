import 'package:dartz/dartz.dart';

import 'entities/order_detail.dart';
import 'order_failures.dart';

abstract class IOrderFacade {
  Future<Either<OrderFailure, List<OrderDetail>>> getUpcomingOrders(String uid);
  Future<Either<OrderFailure, List<OrderDetail>>> getPastOrders(String uid);
  Future<Either<OrderFailure, OrderDetail>> getOrderById(String id);
  Future<Either<OrderFailure, String>> getVoucherUrlById(String id);
  Future<Either<OrderFailure, OrderDetail>> getLatestUpcomingOrder(String uid);
}
