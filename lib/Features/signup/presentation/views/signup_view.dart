import 'package:flutter_drpharma_2/core/app_export.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: navigatorKey.currentContext!.screenWidth / 15),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create an\naccount!",
                  style: TextStyle(
                    color: Color(0xFF566CA2),
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 30, //15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Country",
                suffixIcon: Icons.arrow_forward_ios,
                onTap: () {
                  showCountryPicker(navigatorKey.currentContext!);
                },
                showCursor: false,
                readOnly: true,
              ),
              SizedBox(height: navigatorKey.currentContext!.screenHeight / 40 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Phone",
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 40, //15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.mail,
                hintText: "Email",
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 40, //15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 40, //15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Confirm Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 40,
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 15,
              ),
              CustomRow(
                text: "Continue",
                onPressed: () {
                  showBusinessSpecialization(context);
                },
              ),
              SizedBox(
                height: navigatorKey.currentContext!.screenHeight / 40,
              ),
              buildDontHaveAccount(
                  navigatorKey.currentContext!, "Already hava an account ? ", "Sign In", () {
                Navigator.pop(navigatorKey.currentContext!);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
