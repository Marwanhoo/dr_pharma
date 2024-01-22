import 'package:flutter_drpharma_2/core/app_export.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppText.settings,
          style: AppFonts.style18Pop,
        ),
      ),
      body:  const SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileInfoWidget(),
            CreditLimitWidget(),
            DetailsCardWidget(),
            MoreTextWidget(),
            MoreCardWidget(),
          ],
        ),
      ),
    );
  }
}
