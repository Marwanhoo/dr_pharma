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
            title: "Profile Info",
            subtitle: "Make Changes to your account",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const ProfileInfoEditView()));
            },
          ),
          CustomListTitleWidget(
            iconLeading: Icons.local_pharmacy,
            title: "Pharmacy Info",
            subtitle: "Make Changes to your pharmacy",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const PharmacyInfoEditView()));
            },
          ),
          CustomListTitleWidget(
            iconLeading: Icons.language,
            title: "Language",
            subtitle: "Change the language of the application",
            onTap: () {
              buildChangeLanguage(context);
            },
          ),
          CustomListTitleWidget(
            //iconLeading: country(Country.eg, "Egypt"),
            iconLeading: Icons.flag,
            title: "Egypt",
            subtitle: "change your current location",
            onTap: () {
              showCountryPicker(context);
            },
          ),
        ],
      ),
    );
  }
}

