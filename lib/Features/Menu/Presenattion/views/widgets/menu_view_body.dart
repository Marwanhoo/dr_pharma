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
          body: ListView(
            padding:const EdgeInsets.symmetric(horizontal: 16),
            children:  [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: SerachTextField(),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuItem(
                    iconPath: AppImages.wallet,
                    title: 'Wallet',
                    onTap: (){
                      Navigator.pushNamed(GlobalKeyy.currentContext, '/my wallet');
                    },
                  ),
                  MenuItem(
                    iconPath: AppImages.ads,
                    title: 'My Ads',
                    onTap: (){

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
                    onTap: (){
                      Navigator.pushNamed(GlobalKeyy.currentContext, '/customer ads view');
                    },
                  ),
                  MenuItem(
                    iconPath: AppImages.wCart,
                    title: 'My Order',
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
                    onTap: (){
                      Navigator.pushNamed(GlobalKeyy.currentContext, '/my note book view');
                    },
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
                    onTap: (){
                      Navigator.pushNamed(GlobalKeyy.currentContext, '/expire products');
                    },
                  ),
                  MenuItem(
                    iconPath: 'assets/icons/wHeart.svg',
                    title: 'Favorite',
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
                  ), SizedBox(height: 5,),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
