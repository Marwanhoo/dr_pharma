import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/bsProductsList.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppHeader().build(GlobalKeyy.currentContext),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: SerachTextField(
                hint: "Search Here...",
                isService: false,
              ),
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
            const ProductsList(),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
