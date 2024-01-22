import 'package:flutter_drpharma_2/core/app_export.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.screenWidth * .02,
            vertical: context.screenHeight * .07,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SerachTextField(hint: "Search Here...",isService: false,),
                  Text(
                    "Cancel",
                    style: AppFonts.medium,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.screenHeight * .01,
                  vertical: context.screenHeight * .02,
                ),
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
              const Spacer(),
              Lottie.asset(
                "assets/animations/empty.json",
              ),
              Text(
                "There is no search yet",
                style: AppFonts.medium.copyWith(color: Colors.grey),
              ),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ));
  }
}
