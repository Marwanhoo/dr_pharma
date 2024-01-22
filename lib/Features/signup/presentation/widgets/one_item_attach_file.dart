import 'package:flutter_drpharma_2/core/app_export.dart';

Widget oneItemAttachFile(IconData icon, String name, [bool shape = false]) {
  return Card(
    shape: (shape)
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: AppColors.primary,
            ),
          )
        : null,
    color: AppColors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primary,
          child: Icon(
            icon,
            color: AppColors.white,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
