import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';

class AppFonts {
  static TextStyle header = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: Color(0xFF12121D),
    fontFamily: 'Urbanist',
    height: 0.12,
    letterSpacing: 0.14,
  );
  static TextStyle Timer = const TextStyle(
    color: Color(0xFF566CA2),
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static TextStyle header2 = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w900,
    height: 0.14,
  );
  static TextStyle Date = const TextStyle(
    color: Color(0xFF566CA2),
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
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
    fontFamily: 'Poppins',
  );
  static TextStyle small = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: 'Urbanist',
  );
}
