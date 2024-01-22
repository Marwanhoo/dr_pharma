import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildPageIndicator(PageController pageController) {
  return SmoothPageIndicator(
    controller: pageController,
    count: DataText.imagesBackground.length,
    effect: const SlideEffect(
      spacing: 2.5,
      activeDotColor: Colors.red,
      dotHeight: 12,
      dotWidth: 12,
    ),
  );
}
