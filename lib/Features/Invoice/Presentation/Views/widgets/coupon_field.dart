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
  Color? color =  AppColors.brown;

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
                      
                      ),
                      prefixIconConstraints: BoxConstraints(maxHeight: 29,maxWidth: 27),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = true;
                              color=AppColors.primary;
                            });
                            print('object');
                          },
                          child: const Text('Submit')),suffixIconConstraints: BoxConstraints.loose(const Size.fromHeight(80)),
                      suffixStyle: AppFonts.small.copyWith(
                          color:color, fontWeight: FontWeight.w900),
                      hintText: 'Enter the coupon code',
                      hintStyle: AppFonts.small.copyWith(
                          color: AppColors.brown, fontWeight: FontWeight.w900)),
                ),
              ),
            )),
        Visibility(
            visible: isVisible,
            child: Text(
              " Additional Discount of 5 \$",
              style: AppFonts.style14Pop500,
            )),
      ],
    );
  }
}
