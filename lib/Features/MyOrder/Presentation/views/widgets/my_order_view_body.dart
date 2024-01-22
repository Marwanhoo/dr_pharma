import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/widgets/my_order_item.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/widgets/my_order_listview.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class MyOrderViewBody extends StatelessWidget {
  const MyOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: DefaultAppBar(pageTitle: 'My Order').build(context),
        body: DefaultTabController(
            length: 3,
            child: Column(children: [
              TabBar(
                dividerColor: Colors.transparent,
                dividerHeight: .5,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3,
                unselectedLabelColor: Colors.black,
                indicatorColor: AppColors.primary,
                labelStyle: AppFonts.tabBar,
                tabs: const [
                  Text(
                    "Requested",
                  ),
                  Text(
                    "Completed",
                  ),
                  Text(
                    "Cancelled",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Expanded(
                child: TabBarView(children: [
                  MyOrderListView(
                    itemCount: 10,
                    listviewIndex: 0,
                  ),
                  MyOrderListView(
                    itemCount: 3,
                    listviewIndex: 1,
                  ),
                  MyOrderListView(
                    itemCount: 1,
                    listviewIndex: 2,
                  ),
                ]),
              ),
            ])),
      ),
    );
  }
}
