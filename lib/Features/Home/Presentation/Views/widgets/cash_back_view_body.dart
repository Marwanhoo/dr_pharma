import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';


class CashBackViewBody extends StatelessWidget {
  const CashBackViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            title: "Cash Back",
            leadingIcon: AppImages.arrow,
            isFlash: false,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              children: const [
                CashesDetails(),
                SizedBox(
                  height: 10,
                ),
                TransactionCard(),
                SizedBox(
                  height: 20,
                ),
                TransactionDetails(
                  iconPath: AppImages.gTrans,
                ),
                SizedBox(
                  height: 20,
                ),
                TransactionDetails(
                  iconPath: AppImages.rTrans,
                  color: AppColors.red,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
