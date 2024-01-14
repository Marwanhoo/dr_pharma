import 'package:flutter/material.dart';

import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/best_offers_card.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/bottomNavBar.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_app_bar.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/timer_card.dart';
import 'package:flutter_svg/svg.dart';

class FlashSaleViewBody extends StatelessWidget {
  const FlashSaleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(179),
            child: CustomAppBar(
              title: "Flash Sale",
              isFlash: true,
            
            )),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 0),
          children: const [
            TimerCard(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                BestOffersCard(imagePath: "assets/images/medicineImage.png"),
                SizedBox(
                  width: 10,
                ),
                BestOffersCard(imagePath: "assets/images/medicineImage.png")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                BestOffersCard(imagePath: "assets/images/medicineImage.png"),
                SizedBox(
                  width: 10,
                ),
                BestOffersCard(imagePath: "assets/images/medicineImage.png")
              ],
            ),
            Row(
              children: [
                BestOffersCard(imagePath: "assets/images/medicineImage.png"),
                SizedBox(
                  width: 10,
                ),
                BestOffersCard(imagePath: "assets/images/medicineImage.png")
              ],
            )
          ],
        ));
  }
}
