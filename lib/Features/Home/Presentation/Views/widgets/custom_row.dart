import 'package:flutter/material.dart';

import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/rating.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class CustomCategoryWitharrow extends StatelessWidget {
  const CustomCategoryWitharrow({
    super.key,
    required this.isProfile, required this.text,
  });
  final bool isProfile;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          text,
          style:AppFonts.header2
        ),
        isProfile
            ? Row(
                children: [
                  RatingRow(
                    reviews: '',
                  )
                ],
              )
            : Row(
                children: [
                  Text(
                    'see all',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.24,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: AppColors.black,
                  )
                ],
              )
      ],
    );
  }
}
