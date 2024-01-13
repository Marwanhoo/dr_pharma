import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_drpharma_2/Core/helper.dart';
import 'package:flutter_drpharma_2/Core/utils/widgets/category_row.dart';
import 'package:flutter_drpharma_2/Core/utils/widgets/search_field.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/category_item.dart';
import 'package:flutter_svg/svg.dart';

class CategoryView extends StatelessWidget {
  CategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Category"),
    );
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
    //     child: DefaultTabController(
    //       length: 2,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           const SerachTextField(),
    //           SizedBox(
    //             height: context.screenHeight * .1 - 60,
    //           ),
    //           const TabBar(
    //             indicatorPadding: EdgeInsetsDirectional.all(-10),
    //             automaticIndicatorColorAdjustment: false,
    //             dividerColor: Colors.transparent,
    //             indicatorWeight: 4,
    //             tabs: [
    //               Text(
    //                 "Category",
    //                 style: TextStyle(
    //                   color: Color(0xFF566CA2),
    //                   fontSize: 16,
    //                   fontFamily: 'Outfit',
    //                   fontWeight: FontWeight.w700,
    //                   height: 0,
    //                 ),
    //               ),
    //               Text(
    //                 "Brands",
    //                 style: TextStyle(
    //                   color: Color(0xFF566CA2),
    //                   fontSize: 16,
    //                   fontFamily: 'Outfit',
    //                   fontWeight: FontWeight.w700,
    //                   height: 0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: context.screenHeight * .1 - 30,
    //           ),
    //           Expanded(
    //             child: TabBarView(children: [
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.stretch,
    //                 children: [
    //                   CategoryRow(),
    //                   SizedBox(
    //                     height: context.screenHeight * .1 - 30,
    //                   ),
    //                   const Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       CategoryItem(
    //                         categoryItemCount: 60,
    //                         catName: "Medicines",
    //                         iconPath: "assets/icons/medicine.svg",
    //                       ),
    //                       CategoryItem(
    //                         categoryItemCount: 60,
    //                         catName: "Medical Supplies",
    //                         iconPath: "assets/icons/equ.svg",
    //                       ),
    //                       CategoryItem(
    //                         categoryItemCount: 60,
    //                         catName: "Beauty Tools",
    //                         iconPath: "assets/icons/tools.svg",
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //               const Text("data")
    //             ]),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
