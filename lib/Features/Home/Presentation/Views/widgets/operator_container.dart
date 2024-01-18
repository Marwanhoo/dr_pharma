
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';

class OperatorContainer extends StatelessWidget {
  const OperatorContainer({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 47,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: AppColors.red),
          borderRadius: BorderRadius.circular(18.37),
        ),
      ),
      child: Image.asset(imagePath),
    );
  }
}
