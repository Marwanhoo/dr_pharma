import 'package:flutter_drpharma_2/Services/global_key.dart';
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
            child: Image.asset(AppImages.pharmacyLicense),
          ),
        ),
        const SizedBox(width: 5,),
        Expanded(child: buildAttachAFile(GlobalKeyy.currentContext)),
      ],
    );
  }
}
