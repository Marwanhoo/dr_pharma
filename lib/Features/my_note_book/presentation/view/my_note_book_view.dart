import 'package:flutter_drpharma_2/core/app_export.dart';

class MyNoteBookView extends StatelessWidget {
  const MyNoteBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Note Book View"),
      ),
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
              BestOffersCard(imagePath: "assets/images/medicineImage.png"),
              BestOffersCard(imagePath: "assets/images/medicineImage.png")
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Icon(Icons.arrow_forward),
              icon: const Text("Create Order"),
            )
          ],
        ),
      ),
    );
  }
}
