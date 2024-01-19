import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Menu/Presenattion/views/widgets/menu_Item.dart';
import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppHeader().build(GlobalKeyy.currentContext),
      backgroundColor: Colors.white,
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        physics: const ClampingScrollPhysics(),
        children: const [
          MenuItem(
            iconPath: AppImages.wallet,
            title: 'Wallet',
          ),
          MenuItem(
            iconPath: AppImages.ads,
            title: 'My Ads',
          ),
          MenuItem(
            iconPath: AppImages.ads,
            title: 'Customer Ads',
          ),
          MenuItem(
            iconPath: AppImages.wCart,
            title: 'My Order',
          ),
          MenuItem(
            iconPath: AppImages.noteBook,
            title: 'My Notebook',
          ),
          MenuItem(
            iconPath: AppImages.medService,
            title: 'Medical Services',
          ),
          MenuItem(
            iconPath: AppImages.expired,
            title: 'Expired Products',
          ),
          MenuItem(
            iconPath: AppImages.ads,
            title: 'Favorites',
          ),
          MenuItem(
            iconPath: AppImages.chat,
            title: 'Chat Us',
          ),
          MenuItem(
            iconPath: AppImages.returnIcon,
            title: 'Return Request',
          ),
        ],
      ),
    );
  }
}
