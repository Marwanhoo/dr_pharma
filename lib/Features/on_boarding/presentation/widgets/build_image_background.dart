import 'package:flutter_drpharma_2/core/app_export.dart';

Container buildImageBackground(index) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(DataText.imagesBackground[index]),
        fit: BoxFit.fill,
      ),
    ),
    // child: buildStack(context, pageController),
  );
}
