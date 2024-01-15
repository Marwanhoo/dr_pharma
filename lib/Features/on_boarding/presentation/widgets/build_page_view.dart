import '../../../../core/app_export.dart';
import '../../data/fake_data.dart';
import 'build_one_item.dart';

Widget buildPageView(PageController pageController) {
  return PageView.builder(
    controller: pageController,
    itemBuilder: (context, index) {
      return buildOneItem(index);
    },
    itemCount: FakeData.imagesBackground.length,
  );
}
