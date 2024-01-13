import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/search_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_container.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_header.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/profile_info_view_body.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
            style: AppFonts.header.copyWith(fontSize: 20),
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
