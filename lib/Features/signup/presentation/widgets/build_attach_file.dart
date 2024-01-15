import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_drpharma_2/Features/signup/presentation/widgets/show_attach_file.dart';

import '../../../../core/app_export.dart';

InkWell buildAttachAFile(BuildContext context) {
  return InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: () {
      showAttachFile(context);
    },
    child: DottedBorder(
      radius: const Radius.circular(16),
      borderType: BorderType.RRect,
      color: const Color(0xFF566CA2),
      dashPattern: const [8, 8],
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_upload),
            Text("Attach A File"),
          ],
        ),
      ),
    ),
  );
}
