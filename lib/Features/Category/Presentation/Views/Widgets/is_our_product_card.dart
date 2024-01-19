import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class IsOurProductsCard extends StatelessWidget {
  const IsOurProductsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.circle),
        Positioned(top: 9, left: 8, child: SvgPicture.asset(AppImages.cart)),
      ],
    );
  }
}
