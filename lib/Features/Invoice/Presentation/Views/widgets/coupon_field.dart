import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/colors.dart';

class CouponField extends StatefulWidget {
  const CouponField({
    super.key,
  });

  @override
  State<CouponField> createState() => _CouponFieldState();
}

class _CouponFieldState extends State<CouponField> {
      bool isVisible = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 367,
            height: 50,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFBEBEBE)),
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: SvgPicture.asset(
                        AppImages.coupon,
                        width: 23,
                        height: 18,
                      ),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = true;
                            });
                            print('object');
                          },
                          child: const Text('Submit')),
                      suffixStyle: AppFonts.small.copyWith(
                          color: AppColors.brown, fontWeight: FontWeight.w900),
                      hintText: 'Enter the coupon code',
                      hintStyle: AppFonts.small.copyWith(
                          color: AppColors.brown, fontWeight: FontWeight.w900)),
                ),
              ),
            )),
        Visibility(
            visible: isVisible,
            child: Text(
              " Additional discount of 5 \$",
              style: AppFonts.style14Pop500,
            )),
      ],
    );
  }
}
