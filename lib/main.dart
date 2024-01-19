
import 'package:flutter_drpharma_2/core/lang/generated/app_localizations.dart';
import 'core/app_export.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/',
      routes: routes,
     // home: InVoiceView(),
    );
  }
}
