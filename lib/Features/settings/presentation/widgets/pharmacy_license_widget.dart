import 'package:flutter_drpharma_2/core/app_export.dart';

class PharmacyLicenseWidget extends StatelessWidget {

  const PharmacyLicenseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://video-hbe1-2.xx.fbcdn.net/v/t39.30808-6/265247492_644869880211879_5128529550511999014_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=jFteJW2Q41kAX9XJYAk&_nc_ht=video-hbe1-2.xx&oh=00_AfChW8-xIqa4rSqCRNnv0J3L5Kt5Wk-otaAEgZwgStBShw&oe=65A88CEC",
            ),
          ),
        ),
        const SizedBox(width: 5,),
        Expanded(child: buildAttachAFile(navigatorKey.currentContext!)),
      ],
    );
  }
}
