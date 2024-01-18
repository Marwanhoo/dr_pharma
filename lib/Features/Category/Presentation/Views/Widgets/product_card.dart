import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/price_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/rating.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/images.dart';
import '../../../../../core/constants/styles.dart';

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
        shadows: const [AppFonts.boxShadow],
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
            Text('Panadol Advace', textAlign: TextAlign.center, style: AppFonts.style14Urbn.copyWith(fontSize: 12)),
            Text('from : gsk company',
                textAlign: TextAlign.center,
                style: AppFonts.small.copyWith(color: Colors.black.withOpacity(0.44999998807907104), fontSize: 10)),
            const RatingRow(
              reviews: "(1045 Reviews)",
              iconWidth: 15,
            ),
            const PriceRow(),
          ],
        ),
        const SizedBox(
          width: 80,
        ),
        Stack(
          children: [
            SvgPicture.asset(AppImages.circle),
            Positioned(top: 9, left: 8, child: SvgPicture.asset(AppImages.cart)),
          ],
        )
      ]),
    );
  }
}
