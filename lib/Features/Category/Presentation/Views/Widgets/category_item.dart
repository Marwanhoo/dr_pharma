import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryItemCount,
    required this.catName,
    required this.iconPath,
  });

  final int categoryItemCount;
  final String catName;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.greyBG,
          child: SvgPicture.asset(
            iconPath,
            height: 28,
          ),
        ),
        Text(catName, style: AppFonts.header),
        Text(
          "$categoryItemCount Items",
          style: AppFonts.small.copyWith(color: AppColors.softGrey),
        )
      ],
    );
  }
}
