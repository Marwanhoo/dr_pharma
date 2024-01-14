import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.imagePath, this.onTap,
  });
  final String imagePath;
  final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: AppColors.darkGrey, borderRadius: BorderRadius.circular(7)),
        child: SvgPicture.asset(
          imagePath,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
