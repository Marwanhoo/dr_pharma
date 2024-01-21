import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/custom_bottom_nav.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

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
      appBar: DefaultAppBar(
        pageTitle: 'Profile Info',
      ),
      body: const ProfileInfoViewBody(),
    );
  }
}
