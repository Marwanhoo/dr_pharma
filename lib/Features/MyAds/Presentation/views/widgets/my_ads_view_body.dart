import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/MyAds/Presentation/views/widgets/remaining_uploads.dart';
import 'package:flutter_drpharma_2/Features/MyAds/Presentation/views/widgets/upgrade_package.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class MyAdsViewBody extends StatelessWidget {
  const MyAdsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(pageTitle: 'My Ads').build(context),
      body:const Padding(
        padding:  EdgeInsets.all(20.0),
        child:  Column(
          children: [
            RemainingUploadsContainer(),
            SizedBox(
              height: 40,
            ),
            UpgradePackageContainer()
          ],
        ),
      ),
    ));
  }
}
