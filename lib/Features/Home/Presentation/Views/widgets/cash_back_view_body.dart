import '../../../../../core/app_export.dart';
import '../../../../../core/constants/colors.dart';

class CashBackViewBody extends StatelessWidget {
  const CashBackViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              title: "Cash Back",
              leadingIcon: "assets/icons/arrow.svg",
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
                    iconPath: "assets/icons/greenTranss.svg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TransactionDetails(
                    iconPath: "assets/icons/redTrans.svg",
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
      ),
    );
  }
}
