import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/helper.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/search_field.dart';

import 'package:lottie/lottie.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenHeight * .01,
              vertical: context.screenHeight * .05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SerachTextField(),
                  Text(
                    "Cancel",
                    style: AppFonts.medium,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.screenHeight * .01,
                    vertical: context.screenHeight * .02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Last Search",
                      style: AppFonts.medium,
                    ),
                    Text(
                      "Clear",
                      style: AppFonts.small.copyWith(
                          color: AppColors.softGrey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Spacer(),
              Lottie.asset("assets/animations/empty.json",),
              Text(
                "There is no search yet",
                style: AppFonts.medium.copyWith(color: Colors.grey),
              ),
              Spacer(flex: 2,)
            ],
          ),
        ));
  }
}
