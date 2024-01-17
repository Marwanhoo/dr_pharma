import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/app_export.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366,
      height: 111,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.18),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F868181),
            blurRadius: 11.60,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          AppImages.medicine,
          width: 80,
          height: 80,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Panadol Advace',
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
            const RatingRow(
              reviews: "(1045 Reviews)",
              iconWidth: 15,
            ),
            const PriceRow(),
          ],
        ),
        SizedBox(
          width: 80,
        ),
        Stack(
          children: [
            SvgPicture.asset('assets/icons/circle.svg'),
            Positioned(
                top: 9, left: 8, child: SvgPicture.asset(AppImages.cart)),
          ],
        )
      ]),
    );
  }
}
