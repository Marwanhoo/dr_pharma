import 'package:flutter_drpharma_2/core/app_export.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              BuildStackMain(
                index: index,
              ),
              BuildStackSub(pageController: pageController),
            ],
          );
        },
        itemCount: DataText.imagesBackground.length,
      ),
    );
  }
}
