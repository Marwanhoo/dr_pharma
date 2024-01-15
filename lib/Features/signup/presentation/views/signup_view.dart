import 'package:flutter_drpharma_2/core/app_export.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = "SignUpScreen";

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(26),
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
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Country",
                suffixIcon: Icons.arrow_forward_ios,
                onTap: () {
                  showCountryPicker(context);
                },
                showCursor: false,
                readOnly: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Phone",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                  prefixIcon: Icons.mail, hintText: "Email"),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Confirm Password",
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomRow(
                text: "Continue",
                onPressed: () {
                  showBusinessSpecialization(context);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "you don’t have account ? ",
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(2),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "sign in",
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}






