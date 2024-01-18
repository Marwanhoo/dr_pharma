import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/product_card.dart';


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
            indicatorColor: AppColors.primary,
            tabs: [
              Text("all", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("new", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("popular", style: AppFonts.tabBar.copyWith(fontSize: 14)),
              Text("best offer", style: AppFonts.tabBar.copyWith(fontSize: 14)),
            ],
          ),
          SizedBox(
            height: 500,
            child: TabBarView(children: [
              ListView.separated(
                  itemBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Padding(

                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child:  ProductCard(isInvoice: false,),

                    );
                  },
                  itemCount: 10),
              const Text('data'),
              const Text('data'),
              const Text('data')
            ]),
          )
        ]));
  }
}
