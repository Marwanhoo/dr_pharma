import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/widgets/order_details_view_body.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key, required this.orderNum, required this.orderDate, required this.listviewIndex});
final String orderNum;
  final String orderDate;
    final int listviewIndex;

  @override
  Widget build(BuildContext context) {
    return  OrderDetailsViewBody(orderNum:orderNum ,orderDate: orderDate, listviewIndex: listviewIndex,);
  }
}