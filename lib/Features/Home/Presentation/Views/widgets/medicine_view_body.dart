
import 'package:flutter_drpharma_2/Core/app_export.dart';

class MedicinesViewBody extends StatelessWidget {
  const MedicinesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: const IconThemeData(size: 15, color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Medicines",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 16,
        ),
        children: [
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
          )
        ],
      ),
    );
  }
}
