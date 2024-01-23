import 'package:flutter_drpharma_2/core/app_export.dart';
class ExpireProducts extends StatelessWidget {
  const ExpireProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(pageTitle: 'Expire Products').build(GlobalKeyy.currentContext),
      body: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
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
        itemCount: 2,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Icon(Icons.arrow_forward),
        icon: const Text("New Product"),
      )
    );
  }
}
