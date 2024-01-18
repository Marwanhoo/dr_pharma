import 'core/app_export.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
main() {
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
     
      initialRoute: '/',

      routes: routes,
    );
  }
}
