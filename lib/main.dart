import 'package:device_preview/device_preview.dart';
import 'package:flutter_drpharma_2/Config/routes/routes.dart';
import 'package:flutter_drpharma_2/Features/on_boarding/presentation/views/onboarding_view.dart';
import '../../../../core/app_export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('en', 'US'), Locale("ar", '')],
      localizationsDelegates: {
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      },
      localeResolutionCallback: (deviceLocale, supportedLocale) {
        for (var locale in supportedLocale) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
          // return supportedLocale.first;
        }
        return supportedLocale.first;
      },
      // home: OnBoardingView(),
      initialRoute: '/',
      routes: Routes,
    );
  }
}
