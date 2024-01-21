import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/my_order_view.dart';
import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/lang/generated/app_localizations.dart';
import 'core/app_export.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: GlobalKeyy.navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/',
      routes: routes,
     // home: MyOrderView(),
    );
  }
}
