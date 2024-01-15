import 'package:flutter_drpharma_2/core/app_export.dart';

void showCountryPicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height / 2,
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
              height: 10,
            ),
            const Text(
              "select your country",
            ),
            const SizedBox(
              height: 10,
            ),
            country(Country.sa, "Saudi Arabia"),
            const SizedBox(
              height: 5,
            ),
            country(Country.ps, "Palestine"),
            const SizedBox(
              height: 5,
            ),
            country(Country.eg, "Egypt"),
            const SizedBox(
              height: 5,
            ),
            country(Country.bh, "Bahrain"),
          ],
        ),
      );
    },
  );
}
