
import 'package:flutter_drpharma_2/Core/app_export.dart';

class ProfileInfoView extends StatelessWidget {
  const ProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: null,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Profile Info",
            style: AppFonts.style14Urbn.copyWith(fontSize: 20),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          ),
          actions: [
            CustomContainer(
              imagePath: "assets/icons/searchh.svg",
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: SearchView(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
            )
          ],
        ),
        body: ProfileInfoViewBody());
  }
}
