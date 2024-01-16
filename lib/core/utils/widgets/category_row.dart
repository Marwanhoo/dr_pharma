import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Config/app_localizations.dart';
import 'package:flutter_drpharma_2/core/helper.dart';
import '../../../../core/app_export.dart';

import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/category_item.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/category_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/medicine_view.dart';

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
            print("object");
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MedicinesView();
            }));
          },
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
