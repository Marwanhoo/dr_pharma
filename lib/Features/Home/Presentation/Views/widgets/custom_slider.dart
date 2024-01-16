import 'package:flutter_drpharma_2/core/app_export.dart';
class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0, autoPlay: true),
      items: [2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: 315,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/gradient.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/gradientShadow.png",
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            width: 33,
                            height: 33,
                          ),
                           SizedBox(
                            width: 271,
                            child: Text(
                              'With a reach rate of more than 200 pharmaceutical companies',
                              style: AppFonts.style20Pop,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}
