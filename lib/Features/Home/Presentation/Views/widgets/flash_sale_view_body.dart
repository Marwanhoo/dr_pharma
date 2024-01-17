import 'package:flutter_drpharma_2/core/app_export.dart';

class FlashSaleViewBody extends StatelessWidget {
  const FlashSaleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const CustomAppBar(
              title: "Flash Sale",
              isFlash: true,
            ),
            Expanded(
              child: ListView(
                children: const [
                  TimerCard(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BestOffersCard(
                          imagePath: "assets/images/medicineImage.png"),
                      BestOffersCard(
                          imagePath: "assets/images/medicineImage.png")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BestOffersCard(
                          imagePath: "assets/images/medicineImage.png"),
                      BestOffersCard(
                          imagePath: "assets/images/medicineImage.png")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BestOffersCard(
                          imagePath: "assets/images/medicineImage.png"),
                      BestOffersCard(
                          imagePath: "assets/images/medicineImage.png")
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
