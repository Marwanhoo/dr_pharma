import 'package:flutter_drpharma_2/core/app_export.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    void signUp() {
      Future.delayed(const Duration(seconds: 2), () {
        ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
          const SnackBar(
            content: Text('Sign-up successful!'),
          ),
        );
      });
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: navigatorKey.currentContext!.screenWidth / 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: navigatorKey.currentContext!.screenHeight / 30 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.local_hospital,
                hintText: "Pharmacy Name",
              ),
              SizedBox(
                  height: navigatorKey.currentContext!.screenHeight / 30 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Pharmacy phone",
              ),
              SizedBox(
                  height: navigatorKey.currentContext!.screenHeight / 30 //15,
                  ),
              const Text(
                "Pharmacy license",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "Please upload your pharmacy license",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                  height: navigatorKey.currentContext!.screenHeight / 30 //15,
                  ),
              buildAttachAFile(navigatorKey.currentContext!),
              SizedBox(
                  height: navigatorKey.currentContext!.screenHeight / 30 //15,
                  ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Region",
                onTap: () {
                  showRegion(navigatorKey.currentContext!);
                },
                showCursor: false,
                readOnly: true,
              ),
              SizedBox(
                  height: navigatorKey.currentContext!.screenHeight / 10 //30,
                  ),
              CustomRow(
                  text: "Sign up",
                  onPressed: () {
                    showDialog(
                      context: navigatorKey.currentContext!,
                      builder: (BuildContext context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    signUp();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
