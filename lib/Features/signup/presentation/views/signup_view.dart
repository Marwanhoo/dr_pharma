import 'package:flutter_drpharma_2/core/app_export.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal:GlobalKeyy.currentContext.screenWidth / 15),
          child: Column(
            children: [
               const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppText.signUpCreateAccount,
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
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: AppText.yourCountry,
                suffixIcon: Icons.arrow_forward_ios,
                onTap: () {
                  showCountryPicker(GlobalKeyy.currentContext);
                },
                showCursor: false,
                readOnly: true,
              ),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 40
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: AppText.phone,
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 40,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.mail,
                hintText: AppText.email,
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
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 40,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: AppText.confirmPass,
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 40,
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 15,
              ),
              CustomRow(
                text: AppText.continueText,
                onPressed: () {
                  showBusinessSpecialization(context);
                },
              ),
              SizedBox(
                height: GlobalKeyy.currentContext.screenHeight / 40,
              ),
              buildDoNotHaveAccount(
                  GlobalKeyy.currentContext, AppText.alreadyHaveAccount, AppText.signIn, () {
                Navigator.pop(GlobalKeyy.currentContext);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
