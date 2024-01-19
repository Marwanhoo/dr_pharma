import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(GlobalKeyy.currentContext.screenWidth / 15),
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
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 30 //20,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.person,
                hintText: "Username or Email",
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 40, //30,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              buildForgotPassword(GlobalKeyy.currentContext),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 30, //20,
              ),
              CustomRow(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushNamed(context, '/layout');
                },
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 10, //40,
              ),
              buildLoginWith(),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 50,
              ),
              buildLoginGoogleOrApple(),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 50,
              ),
              buildDontHaveAccount(GlobalKeyy.currentContext, "You don't hava account ? ", "Sign Up",(){
                Navigator.pushNamed(GlobalKeyy.currentContext, '/signup view');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
