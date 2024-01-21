import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/profile_nav_btn.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/invoice_nav_bar.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/payment_row.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/widgets/order_state_column.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/products_listview.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/total_ptice_row.dart';

class OrderDetailsViewBody extends StatelessWidget {
  const OrderDetailsViewBody(
      {super.key,
      required this.orderNum,
      required this.orderDate,
      required this.listviewIndex});
  final String orderNum;
  final String orderDate;
  final int listviewIndex;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:Padding(
        padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*.25,vertical: 10),
        child: const  ProfileButton(text: 'Cancel', btnColor: Colors.white, textColor: AppColors.primary,
        borderColor: AppColors.primary, width: 50,),
      ),
      appBar: DefaultAppBar(pageTitle: 'Order Details'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              orderNum,
              style: AppFonts.style16Pop700,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(orderDate,
                style: AppFonts.style14Pop500.copyWith(color: Colors.black)),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Order State',
              style: AppFonts.style16Pop700.copyWith(color: AppColors.primary),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          StateRow(listviewIndex),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TotalPriceRow(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Payment Summary',
                  style: AppFonts.header2,
                ),
                const SizedBox(
                  height: 10,
                ),
                const PaymetRow(
                  text: 'Total before discount',
                  amount: '50 \$',
                  discount: '',
                ),
                const PaymetRow(
                  text: 'Total after discount',
                  amount: '30.50 \$',
                  discount: '(-20%)',
                ),
                const PaymetRow(
                  text: 'Coupon discount',
                  amount: '0.0 \$',
                  discount: '',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Products',
                  textAlign: TextAlign.right,
                  style: AppFonts.header2.copyWith(color: AppColors.primary),
                ),
              ],
            ),
          ),
          const Expanded(
              child: ProductsListView(
            pageName: 'order',
          ))
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget StateRow(int n) {
  if (n == 0) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OrdersStateColumn(
          state: 'Request is Done',
          stateColor: AppColors.primary,
        ),
        OrdersStateColumn(
          state: 'Confirmed',
          stateColor: AppColors.darkGrey,
        ),
        OrdersStateColumn(
          state: 'On The Way',
          stateColor: AppColors.darkGrey,
        ),
        OrdersStateColumn(
          state: 'Delivered',
          stateColor: AppColors.darkGrey,
        ),
      ],
    );
  }
  if (n == 1) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OrdersStateColumn(
          state: 'Request is Done',
          stateColor: AppColors.primary,
        ),
        OrdersStateColumn(
          state: 'Confirmed',
          stateColor: AppColors.orange,
        ),
        OrdersStateColumn(
          state: 'On The Way',
          stateColor: AppColors.semiOrange,
        ),
        OrdersStateColumn(
          state: 'Delivered',
          stateColor: AppColors.green,
        ),
      ],
    );
  }
  if (n == 2) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OrdersStateColumn(
          state: 'Request is Done',
          stateColor: AppColors.darkGrey,
        ),
        OrdersStateColumn(
          state: 'Confirmed',
          stateColor: AppColors.darkGrey,
        ),
        OrdersStateColumn(
          state: 'On The Way',
          stateColor: AppColors.darkGrey,
        ),
        OrdersStateColumn(
          state: 'Delivered',
          stateColor: AppColors.darkGrey,
        ),
      ],
    );
  }
  return Text('');
}
