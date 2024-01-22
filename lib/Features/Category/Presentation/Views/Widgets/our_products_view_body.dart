import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/product_card.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/products_listview.dart';

import '../../../../../core/app_export.dart';

// import '../../../../../core/constants/colors.dart';
// import '../../../../../core/constants/styles.dart';

class OurProducts extends StatelessWidget {
  const OurProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: ListView(children: [
          const SizedBox(
            height: 10,
          ),
          TabBar(
            dividerColor: const Color(0xffB3B3B5),
            dividerHeight: .5,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            unselectedLabelColor: AppColors.hintColor,
            indicatorColor: const Color.fromARGB(255, 128, 145, 188),
            tabs: [
              Text("all", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("new", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("popular", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("best offer", style: AppFonts.tabBar.copyWith(fontSize: 14)),
            ],
          ),
          const SizedBox(
            height: 600,
            child: TabBarView(children: [
              ProductsListView(
                pageName: 'ourProducts',
              ),
              Text('data'),
              Text('data'),
              Text('data')
            ]),
          ),
          const SizedBox(height: 50),
        ]));
  }
}
