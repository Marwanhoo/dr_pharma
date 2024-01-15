
import 'package:flutter_drpharma_2/Core/app_export.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomHeader(),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: SerachTextField(),
            ),
            CustomSlider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
              child: CustomCategoryWitharrow(
                text: 'Categories',
                isProfile: false,
              ),
            ),
            CategoryRow(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
              child: Text(
                'Best offers',
                style: AppFonts.style18Pop
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BestOffersCard(
                  imagePath: "assets/images/medicineImage.png",
                ),
                BestOffersCard(
                  imagePath: "assets/images/medicineImage.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
