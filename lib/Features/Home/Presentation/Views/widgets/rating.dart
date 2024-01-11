
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_svg/svg.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/star.svg"),
        Text("4.5"),
        Text(
          "(1045 Reviews)",
          style: AppFonts.small.copyWith(color: AppColors.black),
        )
      ],
    );
  }
}
