import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_drpharma_2/Core/helper.dart';

class SerachTextField extends StatelessWidget {
  const SerachTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .85,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              hintText: "Search Here...",
              hintStyle: AppFonts.small.copyWith(color: AppColors.hintColor),
              prefixIcon: Icon(Icons.search, color: AppColors.hintColor)),
        ),
      ),
    );
  }
}
