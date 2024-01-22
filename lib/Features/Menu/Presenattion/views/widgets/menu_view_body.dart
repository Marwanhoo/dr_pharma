import 'package:flutter_drpharma_2/Config/routes/routeManager.dart';
import 'package:flutter_drpharma_2/Features/Favorite/Presentation/views/favorite_view.dart';
import 'package:flutter_drpharma_2/Features/MedicalServices/Presentation/views/medical_services_view.dart';
import 'package:flutter_drpharma_2/Features/MedicalServices/Presentation/views/widgets/return_request.dart';
import 'package:flutter_drpharma_2/Features/MyAds/Presentation/views/my_ads_view.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/my_order_view.dart';
import 'package:flutter_drpharma_2/Features/Menu/Presenattion/views/widgets/menu_Item.dart';
import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppHeader().build(GlobalKeyy.currentContext),
          backgroundColor: Colors.white,
          body: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.only(
              right: 30,
              left: 30,
            ),
            children: [
              const MenuItem(
                iconPath: AppImages.wallet,
                title: 'Wallet',
              ),
              MenuItem(
                iconPath: AppImages.ads,
                title: 'My Ads',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const MyAdsView(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              const MenuItem(
                iconPath: AppImages.ads,
                title: 'Customer Ads',
              ),
              MenuItem(
                iconPath: AppImages.wCart,
                title: 'My Order',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const MyOrderView(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              MenuItem(
                iconPath: AppImages.noteBook,
                title: 'My Notebook',
              ),
              MenuItem(
                iconPath: AppImages.medService,
                title: 'Medical Services',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const MedicalServicesView(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              MenuItem(
                iconPath: AppImages.expired,
                title: 'Expired Prducts',
              ),
              MenuItem(
                iconPath: 'assets/icons/wHeart.svg',
                title: 'Favorite',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const FavoritView(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              MenuItem(
                iconPath: AppImages.chat,
                title: 'Chat Us',
              ),
              MenuItem(
                iconPath: AppImages.returnIcon,
                title: 'Return Request',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const ReturnRequest(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              SizedBox(
                height: 5,
              ),
            ],
          )),
    );
  }
}
/*ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const  MenuItem(
                    iconPath: AppImages.wallet,
                    title: 'Wallet',
                  ),
                  MenuItem(
                    iconPath: AppImages.ads,
                    title: 'My Ads',
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: MyAdsView(),
                        customPageRoute: MaterialPageRoute(builder: (builder) {
                          return MyAdsView();
                        }),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(
                    iconPath: AppImages.ads,
                    title: 'Customer Ads',
                  ),
                  MenuItem(
                    iconPath: AppImages.wCart,
                    title: 'My Order',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
                        return MyOrderView();
                      }));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(
                    iconPath: AppImages.noteBook,
                    title: 'My Notebook',
                  ),
                  MenuItem(
                    iconPath: AppImages.medService,
                    title: 'Medical Services',
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(
                    iconPath: AppImages.expired,
                    title: 'Expired Prducts',
                  ),
                  MenuItem(
                    iconPath: 'assets/icons/wHeart.svg',
                    title: 'Favorite',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
                        return FavoritView();
                      }));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuItem(
                    iconPath: AppImages.chat,
                    title: 'Chat Us',
                  ),
                  MenuItem(
                    iconPath: AppImages.returnIcon,
                    title: 'Return Request',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          )*/
