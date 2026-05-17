import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class PharmacyInfoEditView extends StatelessWidget {
  const PharmacyInfoEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pharmacy Info",
          style: AppFonts.style18Pop,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 40,
            ),
            const CustomTextFormField(
              prefixIcon: Icons.medical_information,
              hintText: "AZ Pharmacy",
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
              prefixIcon: Icons.map,
              hintText: "Pharmacy Region",
              suffixIcon: Icons.arrow_forward_ios,
              onTap: () {
                showCountryPicker(GlobalKeyy.currentContext);
              },
              showCursor: false,
              readOnly: true,
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 30,
            ),
            const Text(
              "Pharmacy License",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              endIndent: MediaQuery.of(GlobalKeyy.currentContext).size.width / 2,
            ),
            const PharmacyLicenseWidget(),
            const Spacer(),
            CustomRow(text: "Save Changes", onPressed: () {}),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}