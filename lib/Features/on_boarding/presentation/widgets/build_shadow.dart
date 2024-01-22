import 'package:flutter_drpharma_2/core/app_export.dart';

Container buildShadow() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/shadow.png"),
        fit: BoxFit.fill,
      ),
    ),
  );
}
