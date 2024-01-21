import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/best_offers_card.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class FavoritViewBody extends StatelessWidget {
  const FavoritViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(pageTitle: 'Favorites'),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BestOffersCard(
                  isFav: true, imagePath: "assets/images/medicineImage.png"),
              BestOffersCard(
                  isFav: true, imagePath: "assets/images/medicineImage.png")
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
