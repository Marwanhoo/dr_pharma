import 'package:flutter_drpharma_2/core/app_export.dart';

class MoreTextWidget extends StatelessWidget {
  const MoreTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text("More",style: AppFonts.style16DmSans.copyWith(
        color: Colors.black,
      ),),
    );
  }
}
