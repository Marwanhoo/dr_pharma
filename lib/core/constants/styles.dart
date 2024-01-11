import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';

class AppFonts {
  static TextStyle header = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Color(0xFF12121D),
    fontFamily: 'Urbanist',
    height: 0.12,
    letterSpacing: 0.14,
  );

  static TextStyle button = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.grey,
    fontFamily: 'Urbanist',
  );
  static TextStyle medium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: 'Urbanist',
  );
  static TextStyle small = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: 'Urbanist',
  );
}
