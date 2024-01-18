

import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/profile_info.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/add_to_cart_button.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/disc_fav_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/price_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/rating.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
            shadows: const [
             AppFonts.boxShadow
            ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DiscFavRow(),
              Image.asset(imagePath),
               Text(
                'panadol advace exs....',
                textAlign: TextAlign.center,
                style: AppFonts.style14Urbn.copyWith(fontSize: 12)
              ),
              Text(
                'from : gsk company',
                textAlign: TextAlign.center,
                style: AppFonts.small.copyWith(
                    color: Colors.black.withOpacity(0.44999998807907104),
                    fontSize: 10)
              ),
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
