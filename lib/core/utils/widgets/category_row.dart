import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/category_item.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/category_view.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CategoryItem(
          categoryItemCount: 60,
          catName: "Medicines",
          iconPath: "assets/icons/medicine.svg",
        ),
        CategoryItem(
          categoryItemCount: 60,
          catName: "Medical Supplies",
          iconPath: "assets/icons/equ.svg",
        ),
        CategoryItem(
          categoryItemCount: 60,
          catName: "Beauty Tools",
          iconPath: "assets/icons/tools.svg",
        ),
      ],
    );
  }
}
