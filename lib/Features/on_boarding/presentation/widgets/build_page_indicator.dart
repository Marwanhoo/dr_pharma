import '../../../../core/app_export.dart';
import '../../data/fake_data.dart';

Widget buildPageIndicator(PageController pageController) {
  return SmoothPageIndicator(
    controller: pageController,
    count: FakeData.imagesBackground.length,
    effect: const SlideEffect(
      spacing: 2.5,
      activeDotColor: Colors.red,
      dotHeight: 12,
      dotWidth: 12,
    ),
  );
}
