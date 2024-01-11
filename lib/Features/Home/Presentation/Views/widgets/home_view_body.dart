import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/utils/widgets/category_row.dart';
import 'package:flutter_drpharma_2/Core/utils/widgets/search_field.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/best_offers_card.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
          child: SerachTextField(),
        ),
        CustomSlider(),
        CustomCategoryWitharrow(),
        CategoryRow(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
          child: Row(
            children: [
              BestOffersCard(
                imagePath: "assets/images/medicineImage.png",
              ),
              BestOffersCard(
                imagePath: "assets/images/medicineImage.png",
              ),
            ],
          ),
        )
      ],
    );
  }
}
