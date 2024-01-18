import 'package:flutter_drpharma_2/core/app_export.dart';

class ProfileInfoView extends StatelessWidget {
  const ProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const ProfileBottomNav(),
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
                  navigatorKey.currentContext!,
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

class ProfileBottomNav extends StatelessWidget {
  const ProfileBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileButton(
            text: 'Add To Cart',
            btnColor: AppColors.primary,
          ),
          SizedBox(
            width: 30,
          ),
          ProfileButton(
            text: 'Buy Now',
            btnColor: AppColors.red,
          )
        ],
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.text,
    required this.btnColor,
  });
  final String text;
  final Color btnColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 166,
        height: 57,
        decoration: ShapeDecoration(
          color: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.83),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppFonts.tabBar.copyWith(
              color: Colors.white,
            ),
          ),
        ));
  }
}
