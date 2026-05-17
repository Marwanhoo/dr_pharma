import 'package:flutter_drpharma_2/core/app_export.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: GlobalKeyy.currentContext.screenWidth / 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppText.createAnAccount,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 30),
              const CustomTextFormField(
                prefixIcon: Icons.local_hospital,
                hintText: AppText.pharmacyName,
              ),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 30),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: AppText.pharmacyPhone,
              ),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 30),
              const Text(
                AppText.pharmacyLicense,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                AppText.pleaseUploadPharmacyLicense,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 30),
              buildAttachAFile(GlobalKeyy.currentContext),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 30),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: AppText.yourRegion,
                onTap: () {
                  showRegion(GlobalKeyy.currentContext);
                },
                showCursor: false,
                readOnly: true,
              ),
              SizedBox(height: GlobalKeyy.currentContext.screenHeight / 10),
              CustomRow(
                text: AppText.signUp,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/login view',
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
