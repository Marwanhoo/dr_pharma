import 'package:flutter_drpharma_2/core/app_export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(context.screenWidth / 15),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome\nBack!",
                  style: TextStyle(
                    color: Color(0xFF566CA2),
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(height: context.screenHeight / 30 //20,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.person,
                hintText: "Username or Email",
              ),
              SizedBox(
                height: context.screenHeight / 40, //30,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              buildForgotPassword(context),
              SizedBox(
                height: context.screenHeight / 30, //20,
              ),
              CustomRow(
                text: "Sign In",
                onPressed: () {},
              ),
              SizedBox(
                height: context.screenHeight / 10, //40,
              ),
              buildLoginWith(),
              SizedBox(
                height: context.screenHeight / 50,
              ),
              buildLoginGoogleOrApple(),
              SizedBox(
                height: context.screenHeight / 50,
              ),
              buildDontHaveAccount(context),
            ],
          ),
        ),
      ),
    );
  }
}