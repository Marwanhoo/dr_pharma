import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/product_card.dart';

import '../../../../../Core/app_export.dart';

class OurProducts extends StatelessWidget {
  const OurProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: ListView(children: [
          const SizedBox(
            height: 30,
          ),
          TabBar(
            dividerColor: const Color(0xffB3B3B5),
            dividerHeight: .5,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            unselectedLabelColor: AppColors.hintColor,
            indicatorColor: AppColors.primary,
            tabs: [
              Text("all", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("new", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("most popular",
                  style: AppFonts.tabBar.copyWith(fontSize: 1)),
              Text("best offer", style: AppFonts.tabBar.copyWith(fontSize: 12)),
            ],
          ),
          SizedBox(
            height: 500,
            child: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const ProductCard();
                    },
                    itemCount: 10),
              ),
              Text('data'),
              Text('data'),
              Text('data')
            ]),
          )
        ]));
  }
}
