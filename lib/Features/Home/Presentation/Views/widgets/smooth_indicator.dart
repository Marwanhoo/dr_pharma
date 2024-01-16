import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicatorr extends StatefulWidget {
  const SmoothIndicatorr({Key? key}) : super(key: key);

  @override
  State<SmoothIndicatorr> createState() => _SmoothIndicatorrState();
}

class _SmoothIndicatorrState extends State<SmoothIndicatorr> {
  Color mainColor = const Color(0xFF2631C1);
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  List<String> imagesUrl = [
    AppImages.med,
    AppImages.med,
    AppImages.med,
    AppImages.med,
    AppImages.med,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: imagesUrl.length,
            itemBuilder: (_, index) => Image.asset(
              imagesUrl[index],
            ),
          ),
        ),
        Container(
          width: 85,
          height: 15,
          decoration: BoxDecoration(
              color: AppColors.softGrey,
              borderRadius: BorderRadius.circular(13)),
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController, // PageController
              count: imagesUrl.length,

              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: const Color.fromARGB(255, 203, 201, 201),
                  activeDotColor: Colors.white), // your preferred effect
              onDotClicked: (index) {},
            ),
          ),
        ),
      ],
    );
  }
}
