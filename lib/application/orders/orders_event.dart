part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.started() = _Started;

  const factory OrdersEvent.getOrdersByUserId(String userId) =
      _GetOrdersByUserId;
  const factory OrdersEvent.getOrderById(String orderId) = _GetOrderById;
  const factory OrdersEvent.cancelOrder(String orderId) = _CancelOrder;
}
