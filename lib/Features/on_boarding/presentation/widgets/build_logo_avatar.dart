import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildLogoAvatar() {
  return const Align(
    alignment: Alignment.topLeft,
    child: CircleAvatar(
      radius: 40,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage("assets/images/logo.png"),
    ),
  );
}