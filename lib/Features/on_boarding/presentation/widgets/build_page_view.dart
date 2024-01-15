import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildPageView(PageController pageController) {
  return PageView.builder(
    controller: pageController,
    itemBuilder: (context, index) {
      return buildOneItem(index);
    },
    itemCount: FakeData.imagesBackground.length,
  );
}