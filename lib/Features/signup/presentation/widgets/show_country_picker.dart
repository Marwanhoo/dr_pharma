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
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppText.selectCountry,
            ),
            const SizedBox(
              height: 10,
            ),
            country(Country.sa, AppText.countrySA),
            const SizedBox(
              height: 5,
            ),
            country(Country.ps, AppText.countryPS),
            const SizedBox(
              height: 5,
            ),
            country(Country.eg, AppText.countryEG),
            const SizedBox(
              height: 5,
            ),
            country(Country.bh, AppText.countryBH),
          ],
        ),
      );
    },
  );
}
