import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/search_view.dart';
import 'package:flutter_svg/svg.dart';

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
        Image.asset("assets/images/Group.png"),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: isFlash
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(leadingIcon),
                      Text(
                        title,
                        style: AppFonts.header.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.30,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SearchView();
                            }));
                          },
                          child: SvgPicture.asset("assets/icons/search.svg"))
                    ],
                  )
                : Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(leadingIcon)),
                      Spacer(),
                      Text(
                        title,
                        style: AppFonts.header.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.30,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Spacer()
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
