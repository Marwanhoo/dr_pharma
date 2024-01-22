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
            child: Image.network(
              "https://media.licdn.com/dms/image/D4D22AQHY5LswxZndgg/feedshare-shrink_1280/0/1691352303278?e=1708560000&v=beta&t=TQHlnchbbxYYrWBBo_rFdnhHoy0jqAk1Z86QLpOBW0I",
            ),
          ),
        ),
        const SizedBox(width: 5,),
        Expanded(child: buildAttachAFile(GlobalKeyy.currentContext)),
      ],
    );
  }
}
