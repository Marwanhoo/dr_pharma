import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
    required this.imagesUrl,
  });

  final List<String> imagesUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 290,
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          shadows: const [AppFonts.boxShadow]),
      child: Column(children: [
        const DiscFavRow(
          iconPath: AppImages.heart,
        ),
        CustomSmoothIndicator(
          isProfile: true,
          imagesUrl: imagesUrl,
          effect: const WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Color.fromARGB(255, 203, 201, 201),
              activeDotColor: Colors.white),
        )
      ]),
    );
  }
}
