import 'package:flutter_drpharma_2/core/app_export.dart';

void buildChangeLanguage(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(navigatorKey.currentContext!).size.height * 0.30,
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
            const SizedBox(
              height: 5,
            ),
            const Text(
              "select Language",
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              decoration: BoxDecoration(
                color:  AppColors.grey,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 0.5,
                  color: Colors.red,
                ),
              ),
              child: const Text(
                "Arabic",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 0.5,
                ),
              ),
              child: const Text(
                "English",
              ),
            ),
          ],
        ),
      );
    },
  );
}
