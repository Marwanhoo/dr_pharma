import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

import '../../../../../core/app_export.dart';

class MedicinesViewBody extends StatelessWidget {
  const MedicinesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        pageTitle: 'Medicines',
      ).build(context),
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
                isFav: false,
                imagePath: "assets/images/medicineImage.png"),
              BestOffersCard(
                isFav: false,
                imagePath: "assets/images/medicineImage.png")
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
