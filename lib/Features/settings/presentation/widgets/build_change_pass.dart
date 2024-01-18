import 'package:flutter_drpharma_2/core/app_export.dart';

void buildChangePassword(context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.75,
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
              height: context.screenHeight / 40,
            ),
            const Text(
              "Reset Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
             SizedBox(
              height: context.screenHeight / 40,
            ),
            const CustomTextFormField(prefixIcon: Icons.lock, hintText: "Old Password"),
            SizedBox(
              height: context.screenHeight / 50,
            ),
            const CustomTextFormField(prefixIcon: Icons.lock, hintText: "New Password"),
            SizedBox(
              height: context.screenHeight / 50,
            ),
            const CustomTextFormField(prefixIcon: Icons.lock, hintText: "Confirm New Password"),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth / 30,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: (){},
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
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
    VoidCallback onPressed,
    ) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: textColor,
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