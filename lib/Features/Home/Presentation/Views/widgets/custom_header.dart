import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class CustomAppHeader {
  const CustomAppHeader();

  PreferredSize build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textBaseline: TextBaseline.ideographic,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.avater),
                    Padding(
                      padding: const EdgeInsets.only(top: 14, left: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'A.Z Pharmacy',
                              // AppLocalizations.of(GlobalKeyy.currentContext)!.helloWorld,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            Text(
                              "Egypt",
                              style:
                                  AppFonts.small.copyWith(color: Colors.black),
                            ),
                          ]),
                    ),
                  ],
                ),
                CustomContainer(
                  imagePath: AppImages.gift,
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                        GlobalKeyy.currentContext,
                        screen: const CashBackView(),
                        withNavBar: false);
                  },
                )
              ]),
        ));
  }
}
