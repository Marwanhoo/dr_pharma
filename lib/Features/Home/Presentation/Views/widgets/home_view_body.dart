import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/utils/widgets/category_row.dart';
import 'package:flutter_drpharma_2/Core/utils/widgets/search_field.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/medicine_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/best_offers_card.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/bottomNavBar.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_header.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_slider.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/medicine_view_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomHeader(),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: SerachTextField(),
            ),
            CustomSlider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
              child: CustomCategoryWitharrow(
                text: 'Categories',
                isProfile: false,
              ),
            ),
            CategoryRow(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
              child: Text(
                'Best offers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.14,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BestOffersCard(
                  imagePath: "assets/images/medicineImage.png",
                ),
                BestOffersCard(
                  imagePath: "assets/images/medicineImage.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
