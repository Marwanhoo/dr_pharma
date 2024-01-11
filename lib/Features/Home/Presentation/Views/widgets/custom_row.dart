import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';

class CustomCategoryWitharrow extends StatelessWidget {
  const CustomCategoryWitharrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      const    Text(
            'categories',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.14,
            ),
          ),
          Row(
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
      ),
    );
  }
}
