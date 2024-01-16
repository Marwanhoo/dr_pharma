import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_container.dart';
import '../../../../../core/constants/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                         Text(
                          AppLocalizations.of(context)!.helloWorld,
                          style:const TextStyle(
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
                PersistentNavBarNavigator.pushNewScreen(context,
                    screen: CashBackView(), withNavBar: false);
              },
            )
          ]),
    );
  }
}
