import 'package:flutter_drpharma_2/Config/routes/routeManager.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar({
    required this.pageTitle,
  });

  final String pageTitle;

  AppBar build(BuildContext context) {
    return AppBar(
      title: Text(pageTitle, style: AppFonts.header2),
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: GestureDetector(
          onTap: () {
            RouteManager.back();
          },
          child: const Icon(Icons.arrow_back_ios)),
      iconTheme: const IconThemeData(size: 15, color: Colors.black),
    );
  }
}
