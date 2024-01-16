import 'package:flutter_drpharma_2/core/app_export.dart';

Row buildLoginGoogleOrApple() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFAFBFA),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 14.50,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: const Color(0XFFFAFBFA),
          radius: 30,
          child: Image.asset(
            "assets/images/google.png",
            width: 35,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFAFBFA),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 14.50,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: const Color(0XFFFAFBFA),
          radius: 30,
          child: Image.asset(
            AppImages.logoApple,
            width: 35,
          ),
        ),
      ),
    ],
  );
}
