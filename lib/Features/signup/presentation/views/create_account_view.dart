import 'package:flutter_drpharma_2/core/helper.dart';

import '../../../../core/app_export.dart';
import '../widgets/build_attach_file.dart';
import '../widgets/show_region.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth / 15),
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
              SizedBox(height: context.screenHeight / 30 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.local_hospital,
                hintText: "Pharmacy Name",
              ),
              SizedBox(height: context.screenHeight / 30 //15,
                  ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Pharmacy phone",
              ),
              SizedBox(height: context.screenHeight / 30 //15,
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
              SizedBox(height: context.screenHeight / 30 //15,
                  ),
              buildAttachAFile(context),
              SizedBox(height: context.screenHeight / 30 //15,
                  ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Region",
                onTap: () {
                  showRegion(context);
                },
                showCursor: false,
                readOnly: true,
              ),
              SizedBox(height: context.screenHeight / 50 //30,
                  ),
              CustomRow(text: "Sign up", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
