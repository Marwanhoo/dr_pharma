import 'package:flutter_drpharma_2/core/app_export.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
            GlobalKeyy.currentContext.screenWidth / 15,
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppText.loginWelcomeBack,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 30,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.person,
                hintText: AppText.loginUserOrEmail,
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 40,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: AppText.password,
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              buildForgotPassword(GlobalKeyy.currentContext),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 30,
              ),
              CustomRow(
                text: AppText.signIn,
                onPressed: () {
                  Navigator.pushNamed(context, '/layout',);
                },
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 10,
              ),
              buildLoginWith(),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 50,
              ),
              buildLoginGoogleOrApple(),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 50,
              ),
              buildDoNotHaveAccount(
                GlobalKeyy.currentContext,
                AppText.loginYouDoNotHaveAccount,
                AppText.signupText,
                () {
                  Navigator.pushNamed(
                    GlobalKeyy.currentContext,
                    '/signup view',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
