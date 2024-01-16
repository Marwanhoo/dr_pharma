import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomCategoryWitharrow extends StatelessWidget {
  const CustomCategoryWitharrow({
    super.key,
    required this.isProfile,
    required this.text,
  });
  final bool isProfile;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppFonts.header2),
        isProfile
            ? const Row(
                children: [
                  RatingRow(
                    reviews: '',
                  )
                ],
              )
            : Row(
                children: [
                  Text('see all', style: AppFonts.style14Pop500),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: AppColors.black,
                  )
                ],
              )
      ],
    );
  }
}
