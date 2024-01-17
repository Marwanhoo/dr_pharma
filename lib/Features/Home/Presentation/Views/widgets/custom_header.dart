import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline: TextBaseline.ideographic,
          children: [
            Row(
              children: [
                Image.asset("assets/images/avatar.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     const   Text(
                          'A.Z Pharmacy',
                          // AppLocalizations.of(navigatorKey.currentContext!)!.helloWorld,
                          style:  TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          "Egypt",
                          style: AppFonts.small.copyWith(color: Colors.black),
                        ),
                      ]),
                ),
              ],
            ),
            CustomContainer(
              imagePath: "assets/icons/gift.svg",
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                    navigatorKey.currentContext!,
                    screen: const CashBackView(),
                    withNavBar: false);
              },
            )
          ]),
    );
  }
}
