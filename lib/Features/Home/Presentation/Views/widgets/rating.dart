import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.reviews, this.iconWidth = 20});
  final String reviews;
  final double iconWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
         AppImages.star,
          width: iconWidth,
        ),
        const Text("4.5", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        Text(
          reviews,
          style: AppFonts.small.copyWith(color: AppColors.black),
        )
      ],
    );
  }
}
