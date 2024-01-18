import 'package:flutter_drpharma_2/core/app_export.dart';

class BestOffersCard extends StatelessWidget {
  const BestOffersCard({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const ProfileInfoView(),
          withNavBar: false, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Container(
        width: 174,
        height: 318,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            shadows: const [AppFonts.boxShadow]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DiscFavRow(),
              Image.asset(imagePath),
              Text('panadol advace exs....',
                  textAlign: TextAlign.center, style: AppFonts.style14Urbn.copyWith(fontSize: 12)),
              Text('from : gsk company',
                  textAlign: TextAlign.center,
                  style: AppFonts.small.copyWith(color: Colors.black.withOpacity(0.44999998807907104), fontSize: 10)),
              const RatingRow(
                reviews: "(1045 Reviews)",
              ),
              const PriceRow(),
              const AddToCartBtn(),
            ]),
      ),
    );
  }
}
