import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    void signUp() {
      Future.delayed(const Duration(seconds: 2), () {
        ScaffoldMessenger.of(GlobalKeyy.currentContext).showSnackBar(
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
              horizontal:GlobalKeyy.currentContext.screenWidth / 15),
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
                  height:GlobalKeyy.currentContext.screenHeight / 30 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.local_hospital,
                hintText: "Pharmacy Name",
              ),
              SizedBox(
                  height: GlobalKeyy.currentContext.screenHeight / 30 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Pharmacy phone",
              ),
              SizedBox(
                  height:GlobalKeyy.currentContext.screenHeight / 30 //15,
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
                  height:GlobalKeyy.currentContext.screenHeight / 30 //15,
                  ),
              buildAttachAFile(GlobalKeyy.currentContext),
              SizedBox(
                  height:GlobalKeyy.currentContext.screenHeight / 30 //15,
                  ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Region",
                onTap: () {
                  showRegion(GlobalKeyy.currentContext);
                },
                showCursor: false,
                readOnly: true,
              ),
              SizedBox(
                  height:GlobalKeyy.currentContext.screenHeight / 10 //30,
                  ),
              CustomRow(
                  text: "Sign up",
                  onPressed: () {
                    showDialog(
                      context: GlobalKeyy.currentContext,
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
