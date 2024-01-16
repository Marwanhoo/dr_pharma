import 'package:flutter_drpharma_2/core/app_export.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(navigatorKey.currentContext!.screenWidth / 15),
          child: Column(
            children: [
               const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome\nBack!",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(height: navigatorKey.currentContext!.screenHeight / 30 //20,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.person,
                hintText: "Username or Email",
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 40, //30,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              buildForgotPassword(navigatorKey.currentContext!),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 30, //20,
              ),
              CustomRow(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushNamed(context, '/layout');
                },
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 10, //40,
              ),
              buildLoginWith(),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 50,
              ),
              buildLoginGoogleOrApple(),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 50,
              ),
              buildDontHaveAccount(navigatorKey.currentContext!, "You don't hava account ? ", "Sign Up",(){
                Navigator.pushNamed(navigatorKey.currentContext!, '/signup view');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
