import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/custom_column.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/distance_container.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/location_container.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
      child: Column(
        children: [
          Container(
            width: 366,
            height: 111,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21.18),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F868181),
                  blurRadius: 11.60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomColumn(
                    iconPath: AppImages.gmail,
                    title: 'Our Gmail',
                    subTitle: 'ZARA73@gmail.com',
                  ),
                  VerticalDivider(
                    color: AppColors.darkGrey,
                    indent: 10,
                    endIndent: 10,
                  ),
                  CustomColumn(
                    iconPath: AppImages.phone,
                    title: 'Call Us',
                    subTitle: '+020949485783',
                  ),
                ]),
          ),
         const SizedBox(
            height: 30,
          ),
          LocationContainer()
        ],
      ),
    );
  }
}

