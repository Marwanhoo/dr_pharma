import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/brands_item.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/brand_view.dart';

import '../../../../../core/app_export.dart';
import '../../../../../core/constants/images.dart';

class BrandsTabViewBody extends StatelessWidget {
  const BrandsTabViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
      ),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 30,
        children: [
          BrandsItem(
            brandName: 'Sanofi',
            brandImage: AppImages.brand3,
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(navigatorKey.currentContext!,
                  screen: const BrandView(), withNavBar: false);
            },
          ),
          const BrandsItem(
            brandName: 'Merck',
            brandImage: AppImages.brand2,
          ),
          const BrandsItem(
            brandName: 'Gsk',
            brandImage: AppImages.brand1,
          ),
          const BrandsItem(
            brandName: 'Sanofi',
            brandImage: AppImages.brand3,
          ),
          const BrandsItem(
            brandName: 'Merck',
            brandImage: AppImages.brand2,
          ),
          const BrandsItem(
            brandName: 'Gsk',
            brandImage: AppImages.brand1,
          ),
          const BrandsItem(
            brandName: 'Sanofi',
            brandImage: AppImages.brand3,
          ),
          const BrandsItem(
            brandName: 'Merck',
            brandImage: AppImages.brand2,
          ),
          const BrandsItem(
            brandName: 'Gsk',
            brandImage: AppImages.brand1,
          ),
        ],
      ),
    );
  }
}
