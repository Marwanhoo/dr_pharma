import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Menu/Presenattion/views/widgets/remaining_uploads.dart';
import 'package:flutter_drpharma_2/Features/Menu/Presenattion/views/widgets/upgrade_package.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class MyAdsViewBody extends StatelessWidget {
  const MyAdsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(brandName: 'My Ads'),
      body: const Column(
        children: [
          RemainingUploadsContainer(),
          SizedBox(
            height: 40,
          ),
          UpgradePackageContainer()
        ],
      ),
    ));
  }
}
