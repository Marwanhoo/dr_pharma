import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/helper.dart';

import '../../constants/colors.dart';

class SerachTextField extends StatelessWidget {
  const SerachTextField({
    super.key,
    required this.hint, required this.isService,
  });
  final String hint;
  final bool isService;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .8,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              hintText: hint,
              hintStyle: AppFonts.small.copyWith(color: AppColors.hintColor),
              prefixIcon: isService?null: const Icon(Icons.search, color: AppColors.hintColor)),
        ),
      ),
    );
  }
}
