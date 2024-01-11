import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/add_to_cart_button.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/price_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/rating.dart';
import 'package:flutter_svg/svg.dart';

class BestOffersCard extends StatelessWidget {
  const BestOffersCard({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 318,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F868181),
              blurRadius: 11.60,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 38.09,
                  height: 19,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDA3A2A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    '-15%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/heart.svg")
              ],
            ),
            Image.asset(imagePath),
            const Text(
              'panadol advace exs....',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'from : gsk company',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.44999998807907104),
                fontSize: 10,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: 0.10,
              ),
            ),
            const RatingRow(),
            const PriceRow(),
            const AddToCartBtn(),
          ]),
    );
  }
}
