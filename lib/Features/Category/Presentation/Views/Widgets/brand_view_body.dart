import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Config/routes/routeManager.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/about_us_view_body.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/our_products_view_body.dart';
import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/helper.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

import '../../../../../core/constants/images.dart';

class BrandViewBody extends StatelessWidget {
  const BrandViewBody({super.key, required this.brandAme});
  final String brandAme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(brandName: 'Sanofi').build(GlobalKeyy.currentContext),
      body: SingleChildScrollView(
          child: Center(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Image.asset(AppImages.brand),
              SizedBox(
                height: context.screenHeight * .1 - 60,
              ),
              TabBar(
                indicatorPadding: const EdgeInsetsDirectional.all(-10),
                automaticIndicatorColorAdjustment: false,
                dividerColor: Colors.transparent,
                indicatorWeight: 4,
                tabs: [
                  Text("About Us", style: AppFonts.tabBar),
                  Text("Our Products", style: AppFonts.tabBar),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .1 - 50,
              ),
              const SizedBox(
                height: 500,
                child: TabBarView(children: [
                  AboutUs(),
                  OurProducts(),
                ]),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
