import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/custom_bottom_nav.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class ProfileInfoView extends StatelessWidget {
  const ProfileInfoView({super.key});

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile Info",
          style: AppFonts.style14Urbn.copyWith(fontSize: 20),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CustomContainer(
              imagePath: "assets/icons/searchh.svg",
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  GlobalKeyy.currentContext,
                  screen: const SearchView(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
            ),
          )
        ],
      ),
      body: const ProfileInfoViewBody(),
    );
  }
}
