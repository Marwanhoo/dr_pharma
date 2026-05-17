import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class ProfileInfoEditView extends StatelessWidget {
  const ProfileInfoEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile Info",
          style: AppFonts.style18Pop,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Column(
          children: [
            const HeadProfileInfo(),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 100,
            ),
            const CustomTextFormField(
              prefixIcon: Icons.person,
              hintText: "Muhammad Marwan",
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 40,
            ),
            const CustomTextFormField(
              prefixIcon: Icons.email,
              hintText: "Muh.Marwanhoo@Gmail.com",
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 40,
            ),
            const CustomTextFormField(
              prefixIcon: Icons.phone_iphone,
              hintText: "+201090039341",
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 40,
            ),
            CustomTextFormField(
              prefixIcon: Icons.lock,
              hintText: "Change Passwprd",
              suffixIcon: Icons.arrow_forward_ios,
              onTap: () {
                buildChangePassword(GlobalKeyy.currentContext);
              },
              showCursor: false,
              readOnly: true,
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 30,
            ),
            CustomRow(text: "Save Changes", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
