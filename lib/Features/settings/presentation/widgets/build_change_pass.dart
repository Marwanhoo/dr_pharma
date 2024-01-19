import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

void buildChangePassword(context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(GlobalKeyy.currentContext).size.height * 0.75,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 40,
            ),
            const Text(
              "Reset Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 40,
            ),
            const CustomTextFormField(prefixIcon: Icons.lock, hintText: "Old Password"),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 50,
            ),
            const CustomTextFormField(prefixIcon: Icons.lock, hintText: "New Password"),
            SizedBox(
              height: GlobalKeyy.currentContext.screenHeight / 50,
            ),
            const CustomTextFormField(prefixIcon: Icons.lock, hintText: "Confirm New Password"),
            const Spacer(),
            Row(
              children: [
                buildButton("Cancel", Colors.white, AppColors.primary, () {
                  Navigator.of(GlobalKeyy.currentContext).pop();
                }, colorSide: AppColors.primary),
                SizedBox(
                  width: context.screenWidth / 30,
                ),
                buildButton(
                  "Save",
                  AppColors.primary,
                  Colors.white,
                  () {
                    Navigator.of(GlobalKeyy.currentContext).pop();
                  },
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Expanded buildButton(
  String text,
  Color bgColor,
  Color textColor,
  VoidCallback onPressed, {
  Color? colorSide,
}) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: colorSide ?? AppColors.primary,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
  );
}
