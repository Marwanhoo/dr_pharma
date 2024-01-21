import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class UpgradePackageContainer extends StatelessWidget {
  const UpgradePackageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 353,
        height: 56,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.red),
            borderRadius: BorderRadius.circular(17.83),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 17,
                ),
                SvgPicture.asset(AppImages.crown),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  'upgrade package',
                  style: AppFonts.style16Pop700.copyWith(color: AppColors.red),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward,
              color: AppColors.red,
            )
          ],
        ),
      ),
    );
  }
}
