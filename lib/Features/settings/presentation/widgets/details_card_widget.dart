import 'package:flutter_drpharma_2/core/app_export.dart';

class DetailsCardWidget extends StatelessWidget {
  const DetailsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          CustomListTitleWidget(
            iconLeading: Icons.person,
            title: AppText.profileInfo,
            subtitle: AppText.makeChangesToYourAccount,
            onTap: () {
              Navigator.pushNamed(GlobalKeyy.currentContext, '/profile info edit view');
            },
          ),
          CustomListTitleWidget(
            iconLeading: Icons.local_pharmacy,
            title: AppText.pharmacyInfo,
            subtitle: AppText.makeChangesToYourPharmacy,
            onTap: () {
              Navigator.pushNamed(GlobalKeyy.currentContext, '/pharmacy info edit view');
            },
          ),
          CustomListTitleWidget(
            iconLeading: Icons.language,
            title: AppText.lang,
            subtitle: AppText.changeTheLang,
            onTap: () {
              buildChangeLanguage(GlobalKeyy.currentContext);
            },
          ),
          CustomListTitleWidget(
            //iconLeading: country(Country.eg, "Egypt"),
            iconLeading: Icons.flag,
            title: AppText.egypt,
            subtitle: AppText.changeYourCurrentLocation,
            onTap: () {
              showCountryPicker(GlobalKeyy.currentContext);
            },
          ),
        ],
      ),
    );
  }
}