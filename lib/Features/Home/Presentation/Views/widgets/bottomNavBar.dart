import 'package:flutter/cupertino.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/invoice_view.dart';

import 'package:flutter_drpharma_2/core/app_export.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/ActiveHome.svg"),
        inactiveIcon: SvgPicture.asset("assets/icons/inActHome.svg"),
        title: ("Home"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/ActCat.svg"),
        inactiveIcon: SvgPicture.asset("assets/icons/inActCat.svg"),
        title: ("Category"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/sale.svg"),
        inactiveIcon: SvgPicture.asset("assets/icons/sale.svg"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/icons/actCart.svg",
        ),
        inactiveIcon: SvgPicture.asset("assets/icons/inActCart.svg"),
        title: ("Cart"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/icons/actMenu.svg"),
        inactiveIcon: SvgPicture.asset("assets/icons/inActMenu.svg"),
        title: ("Menu"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const HomeViewBody(),
      const CategoryView(),
      const FlashSaleViewBody(),
      const InVoiceView(),
      const HomeViewBody(),
    ];
  }

  // final PersistentTabController controller =
  //     PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      //controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      navBarHeight: 89,

      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(33.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
