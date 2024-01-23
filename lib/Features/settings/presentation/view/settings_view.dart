import 'package:flutter_drpharma_2/core/app_export.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(pageTitle: 'Settings').build(GlobalKeyy.currentContext),
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
