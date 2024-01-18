import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomSmoothIndicator extends StatefulWidget {
  const CustomSmoothIndicator(
      {Key? key,
      required this.imagesUrl,
      required this.effect,
      required this.isProfile})
      : super(key: key);
  final List<String> imagesUrl;
  final IndicatorEffect effect;
  final bool isProfile;

  @override
  State<CustomSmoothIndicator> createState() => _CustomSmoothIndicatorState();
}

class _CustomSmoothIndicatorState extends State<CustomSmoothIndicator> {
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imagesUrl.length,
            itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Image.asset(
                widget.imagesUrl[index],
              ),
            ),
          ),
        ),
        widget.isProfile
            ? Container(
                width: 85,
                height: 15,
                decoration: BoxDecoration(
                    color: AppColors.softGrey,
                    borderRadius: BorderRadius.circular(13)),
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController, // PageController
                    count: widget.imagesUrl.length,

                    effect: widget.effect, // your preferred effect
                    onDotClicked: (index) {},
                  ),
                ),
              )
            : SmoothPageIndicator(
                controller: _pageController, // PageController
                count: widget.imagesUrl.length,

                effect: widget.effect, // your preferred effect
                onDotClicked: (index) {},
              ),
      ],
    );
  }
}
