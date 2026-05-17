import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/card_trailing.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.pageName});
  final String pageName;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int counter = 0;

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
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  AppImages.medicine,
                  width: 80,
                  height: 80,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Panadol Advace',
                        textAlign: TextAlign.center,
                        style: AppFonts.style14Urbn.copyWith(fontSize: 12)),
                    Text('from : gsk company',
                        textAlign: TextAlign.center,
                        style: AppFonts.small.copyWith(
                            color:
                                Colors.black.withOpacity(0.44999998807907104),
                            fontSize: 10)),
                    const RatingRow(
                      reviews: "(1045 Reviews)",
                      iconWidth: 15,
                    ),
                    const PriceRow(),
                  ],
                ),
              ],
            ),
            TrailingWidget(widget.pageName),
            SizedBox(
              width: context.screenWidth * .001,
            )
          ]),
    );
  }
}


