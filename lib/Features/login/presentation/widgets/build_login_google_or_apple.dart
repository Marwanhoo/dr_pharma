import 'package:flutter_drpharma_2/core/app_export.dart';

Row buildLoginGoogleOrApple() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      loginWithGoogleOrApple(AppImages.logoGoogle),
      loginWithGoogleOrApple(AppImages.logoApple),
    ],
  );
}

Container loginWithGoogleOrApple(String imagePath) {
  return Container(
    decoration: const BoxDecoration(
      color: AppColors.whiteDegree,
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
      backgroundColor: AppColors.whiteDegree,
      radius: 30,
      child: Image.asset(
        imagePath,
        width: 35,
      ),
    ),
  );
}
