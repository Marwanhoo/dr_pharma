import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({super.key, required this.brandName, required this.brandImage, this.onTap});
  final String brandName;
  final String brandImage;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(brandImage),
          Text(
            brandName,
            style: AppFonts.button.copyWith(fontWeight: FontWeight.w900, fontSize: 10),
          )
        ],
      ),
    );
  }
}
