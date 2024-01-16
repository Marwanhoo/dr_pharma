import 'package:flutter_drpharma_2/core/app_export.dart';

class ProfileInfoView extends StatelessWidget {
  const ProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
