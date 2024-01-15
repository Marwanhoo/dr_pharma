

import 'package:device_preview/device_preview.dart';

import 'Core/app_export.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // supportedLocales: const [Locale('en', 'US'), Locale("ar", '')],
      // localizationsDelegates:  {
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate
      // },
      // localeResolutionCallback: (deviceLocale, supportedLocale) {
      //   for (var locale in supportedLocale) {
      //     if (deviceLocale != null &&
      //         deviceLocale.languageCode == locale.languageCode) {
      //       return deviceLocale;
      //     }
      //    // return supportedLocale.first;
      //   }
      //    return supportedLocale.first;
      // },
      home: Layout(),
    );
  }
}
