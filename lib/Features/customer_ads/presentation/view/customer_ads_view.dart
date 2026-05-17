import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomerAdsView extends StatelessWidget {
  const CustomerAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Ads View"),
      ),
      body:  ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BestOffersCard(imagePath: "assets/images/medicineImage.png", isFav: false,),
              BestOffersCard(imagePath: "assets/images/medicineImage.png", isFav: false,)
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
