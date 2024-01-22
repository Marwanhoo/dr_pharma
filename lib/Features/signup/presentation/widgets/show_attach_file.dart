import 'package:flutter_drpharma_2/core/app_export.dart';

void showAttachFile(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.40,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              AppText.attachAFile,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              AppText.pleaseUploadPharmacyLicense,
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 25),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 100,
              ),
              children: [
                oneItemAttachFile(Icons.add_to_drive_outlined, AppText.fromDrive),
                oneItemAttachFile(Icons.phone_iphone, AppText.yourFiles, true),
              ],
            ),
          ],
        ),
      );
    },
  );
}
