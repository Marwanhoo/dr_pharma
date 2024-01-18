import 'package:flutter_drpharma_2/core/app_export.dart';

import '../../../../core/constants/images.dart';

Container buildContainer(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: context.screenWidth / 11),
    height: context.screenHeight / 4,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AppImages.splashLogo),
      ),
    ),
  );
}
