
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class MedicalServiceContainer extends StatelessWidget {
  const MedicalServiceContainer({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 259,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        shadows: const [AppFonts.boxShadow],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const DiscFavRow(
              iconPath: AppImages.heart,
            ),
            Image.asset(
              imagePath,
            ),
            Text('Application and website for the pharmacy',
                style: AppFonts.small.copyWith(color: Colors.black)),
            Text(
              '\$335,00',
              style: AppFonts.style12DmSans.copyWith(
                  fontSize: 10, decoration: TextDecoration.lineThrough),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$235,00',
                    style: AppFonts.style14Urbn.copyWith(color: AppColors.red)),
                Container(
                  width: 28,
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: AppColors.primary,
                    shape: OvalBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            ),
          ]),
    );
  }
}
