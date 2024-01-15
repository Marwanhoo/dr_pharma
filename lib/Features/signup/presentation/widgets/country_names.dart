import 'package:dash_flags/dash_flags.dart';

import '../../../../core/app_export.dart';

Widget country(Country country, String nameCountry) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        width: 0.5,
      ),
    ),
    child: Row(
      children: [
        CountryFlag(
          country: country,
          height: 16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(nameCountry),
      ],
    ),
  );
}
