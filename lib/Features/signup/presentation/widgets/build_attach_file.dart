import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildAttachAFile(BuildContext context) {
  return GestureDetector(
    onTap: () {
      showAttachFile(context);
    },
    child: DottedBorder(
      radius: const Radius.circular(16),
      borderType: BorderType.RRect,
      color: AppColors.primary,
      dashPattern: const [8, 8],
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_upload),
            Text(AppText.attachAFile),
          ],
        ),
      ),
    ),
  );
}
