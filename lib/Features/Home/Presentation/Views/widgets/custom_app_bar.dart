import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/cash_back_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/search_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../../core/constants/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leadingIcon = "assets/icons/wHeart.svg",
    required this.isFlash,
  });
  final String title;
  final String leadingIcon;
  final bool isFlash;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Group.png",
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: isFlash
                ? IsFlashRow(leadingIcon: leadingIcon, title: title)
                : isNotFLash(leadingIcon: leadingIcon, title: title),
          ),
        ),
      ],
    );
  }
}

class isNotFLash extends StatelessWidget {
  const isNotFLash({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  final String leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(leadingIcon)),
        Spacer(),
        Text(
          title,
          style: AppFonts.style14Urbn.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18.30,
              fontFamily: 'Poppins',
              color: Colors.white),
        ),
        Spacer()
      ],
    );
  }
}

class IsFlashRow extends StatelessWidget {
  const IsFlashRow({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  final String leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(leadingIcon),
        Text(
          title,
          style: AppFonts.style14Urbn.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18.30,
              fontFamily: 'Poppins',
              color: Colors.white),
        ),
        GestureDetector(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(context,
                  screen: SearchView(), withNavBar: false);
            },
            child: SvgPicture.asset("assets/icons/search.svg"))
      ],
    );
  }
}
