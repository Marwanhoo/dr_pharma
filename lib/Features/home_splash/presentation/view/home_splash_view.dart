import 'package:flutter_drpharma_2/core/app_export.dart';


class HomeSplashView extends StatefulWidget {
  const HomeSplashView({super.key});

  @override
  State<HomeSplashView> createState() => _HomeSplashViewState();
}

class _HomeSplashViewState extends State<HomeSplashView> {
  @override
  void initState() {
    super.initState();
    time();
  }

  Future time() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(
          GlobalKeyy.currentContext,
          "/onBoarding view",
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splash),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildContainer(GlobalKeyy.currentContext),
              Image(
                width: GlobalKeyy.currentContext.screenWidth / 2,
                image: const AssetImage(AppImages.textLogo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
