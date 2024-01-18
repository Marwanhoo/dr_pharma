import 'package:flutter_drpharma_2/core/app_export.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:const  PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomHeader(),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: SerachTextField(),
            ),
            const CustomSlider(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 28),
              child: CustomCategoryWitharrow(
                text: 'Categories',
                isProfile: false,
              ),
            ),
            const CategoryRow(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 28),
              child: Text('Best offers', style: AppFonts.header2),
            ),
            Expanded(
              child: ListView.separated(
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
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
