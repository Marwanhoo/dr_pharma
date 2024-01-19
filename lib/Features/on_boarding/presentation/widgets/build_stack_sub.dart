import 'package:flutter_drpharma_2/core/app_export.dart';

class BuildStackSub extends StatelessWidget {
  const BuildStackSub({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(context.screenWidth / 15),
          child: Column(
            children: [
              buildLogoAvatar(),
              const Spacer(),
              buildPageIndicator(pageController),
              SizedBox(height: context.screenHeight / 20),
              buildElevatedButton(
                context,
                    () {
                  Navigator.pushNamed(context, '/login view');
                },
                "login",

                const Color(0XFF566CA2),
              ),
              SizedBox(
                height: context.screenHeight / 30,
              ),
              buildElevatedButton(
                context,
                    () {
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
    );
  }
}
