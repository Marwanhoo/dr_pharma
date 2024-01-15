import '../../../../../core/app_export.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.reviews,
  });
  final String reviews;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/star.svg",
          width: 20,
        ),
        Text("4.5", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        Text(
          reviews,
          style: AppFonts.small.copyWith(color: AppColors.black),
        )
      ],
    );
  }
}
