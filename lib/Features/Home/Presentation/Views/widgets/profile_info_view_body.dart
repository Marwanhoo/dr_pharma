import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/operator_container.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/slider_disc_fav_container.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/bsProductsList.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/custom_bottom_nav.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

import '../../../../../core/constants/images.dart';

class ProfileInfoViewBody extends StatefulWidget {
  const ProfileInfoViewBody({super.key});

  @override
  State<ProfileInfoViewBody> createState() => _ProfileInfoViewBodyState();
}

class _ProfileInfoViewBodyState extends State<ProfileInfoViewBody> {
  int counter = 0;

  List<String> imagesUrl = [
    AppImages.med,
    AppImages.med,
    AppImages.med,
    AppImages.med,
    AppImages.med,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16.0),
        child: CustomBottomNav(
          btnText1: 'Add To Cart',
          btnText2: 'Buy Now',
          btnC1: AppColors.primary,
          btn2: AppColors.red,
          height: 57,
          btn1BorderC: AppColors.primary,
          btn2BorderC: AppColors.red,
        ),
      ),
      appBar: DefaultAppBar(
        pageTitle: 'Profile Info',
      ).build(context),
      body: ListView(
        children: [
          Section1(imagesUrl: imagesUrl),
          Section2(),
          const ProductsList()
        ],
      ),
    );
  }

  Padding Section2() {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomCategoryWitharrow(
              text: "Panadol Advance",
              isProfile: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "From:Gsk Comapny",
                  style: AppFonts.style14Pop500
                      .copyWith(color: AppColors.darkGrey),
                ),
                Text("(1045 Reviews)",
                    style: AppFonts.style14Pop500
                        .copyWith(color: AppColors.darkGrey))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CounterRow(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const OperatorContainer(
                    imagePath: AppImages.minus,
                    isInvoice: false,
                  ),
                ),
                Text(
                  counter.toString(),
                  style: AppFonts.header2,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const OperatorContainer(
                      imagePath: AppImages.plus,
                      isInvoice: false,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30),
              child: Text(
                "Also Available In :",
                style: AppFonts.header2,
              ),
            ),
          ],
        ),
      );
  }
}
