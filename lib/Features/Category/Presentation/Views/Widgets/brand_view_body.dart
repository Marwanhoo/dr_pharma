import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/about_us_view_body.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/our_products_view_body.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';

class BrandViewBody extends StatelessWidget {
  const BrandViewBody({super.key, required this.brandAme});
  final String brandAme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(brandAme, style: AppFonts.header2),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(navigatorKey.currentContext!);
            },
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: const IconThemeData(size: 15, color: Colors.black),
      ),
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
