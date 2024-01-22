import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/bsProductsList.dart';

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
                  ProductsList(),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
