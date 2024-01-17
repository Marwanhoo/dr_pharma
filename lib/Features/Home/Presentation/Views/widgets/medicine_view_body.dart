import '../../../../../Core/app_export.dart';

class MedicinesViewBody extends StatelessWidget {
  const MedicinesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: const IconThemeData(size: 15, color: Colors.black),
        centerTitle: true,
        title: Text("Medicines", style: AppFonts.style20Pop),
      ),
      body: ListView.separated(
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
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
