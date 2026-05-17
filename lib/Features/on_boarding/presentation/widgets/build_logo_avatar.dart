import 'package:flutter_drpharma_2/core/app_export.dart';

import '../../../../core/constants/images.dart';

Widget buildLogoAvatar() {
  return const Align(
    alignment: Alignment.topLeft,
    child: CircleAvatar(
      radius: 40,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage(AppImages.logo),
    ),
  );
}
