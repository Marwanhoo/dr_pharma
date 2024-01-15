import 'package:flutter_drpharma_2/core/helper.dart';

import '../../../../core/app_export.dart';
import '../../../login/presentation/views/login_view.dart';
import '../../../signup/presentation/views/signup_view.dart';
import '../widgets/build_elevated_button.dart';
import '../widgets/build_logo_avatar.dart';
import '../widgets/build_page_indicator.dart';
import '../widgets/build_page_view.dart';

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
                SizedBox(height: context.screenHeight / 20 //30,
                    ),
                buildElevatedButton(
                  context,
                  () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
                    Navigator.pushNamed(context, '/login view');
                  },
                  "login",
                  const Color(0XFF566CA2),
                ),
                SizedBox(height: context.screenHeight / 30 //20,
                    ),
                buildElevatedButton(
                  context,
                  () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SignUpScreen()));
                    Navigator.pushNamed(context, '/signup view');
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
