import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryItemCount,
    required this.catName,
    required this.iconPath,
    this.onTap,
  });

  final int categoryItemCount;
  final String catName;
  final String iconPath;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
          Text(catName, style: AppFonts.style14Urbn),
          Text(
            "$categoryItemCount Items",
            style: AppFonts.small.copyWith(color: AppColors.softGrey),
          )
        ],
      ),
    );
  }
}
