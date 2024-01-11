import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Image.asset("assets/images/Group.png"),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/wHeart.svg"),
                Text(
                  "Flash Sale",
                  style: AppFonts.header.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.30,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
                SvgPicture.asset("assets/icons/search.svg")
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
