import 'package:flutter_drpharma_2/core/app_export.dart';

class MoreCardWidget extends StatelessWidget {
  const MoreCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child:  Column(
        children: [
          CustomListTitleWidget(
            iconLeading: Icons.favorite,
            title: "About App",
            onTap: () {},
          ),
          CustomListTitleWidget(
            iconLeading: Icons.logout,
            title: "Log Out",
            subtitle: "Further secure your account for safety",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

