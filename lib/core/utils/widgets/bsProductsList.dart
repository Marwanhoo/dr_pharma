import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BestOffersCard(isFav: false, imagePath: AppImages.medicine),
            BestOffersCard(isFav: false, imagePath: AppImages.medicine)
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 10,
    );
  }
}
