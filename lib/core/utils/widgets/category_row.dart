
import '../../../../core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/category_item.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CategoryItem(
          categoryItemCount: 60,
          catName: "Medicines",
          iconPath: "assets/icons/medicine.svg",
          onTap: () {

            log("object");
            PersistentNavBarNavigator.pushNewScreen(navigatorKey.currentContext!, screen: const MedicinesView());

          },
        ),
        const CategoryItem(
          categoryItemCount: 60,
          catName: "Medical Supplies",
          iconPath: AppImages.equ,
        ),
        CategoryItem(
          categoryItemCount: 60,
          catName: "Beauty Tools",
          iconPath: AppImages.tools,
          onTap: () {
            Navigator.of(navigatorKey.currentContext!).pushNamed('/beautyTools');
          },
        ),
      ],
    );
  }
}
