import 'package:flutter_drpharma_2/core/app_export.dart';

class OnBoardingView extends StatelessWidget {
  static const String routeName = "OnBoardingView";

  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildPageView(pageController),
          Padding(
            padding: EdgeInsets.all(context.screenWidth / 15),
            child: Column(
              children: [
                buildLogoAvatar(),
                const Spacer(),
                buildPageIndicator(pageController),
                 SizedBox(
                  height: context.screenHeight / 20 //30,
                ),
                buildElevatedButton(
                  context,
                  () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  "login",
                  const Color(0XFF566CA2),
                ),
                 SizedBox(
                  height: context.screenHeight / 30 //20,
                ),
                buildElevatedButton(
                  context,
                  () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const SignUpScreen()));
                  },
                  "sign up",
                  Colors.transparent,
                  Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

