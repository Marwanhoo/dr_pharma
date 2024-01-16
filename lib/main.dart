import 'package:device_preview/device_preview.dart';
import 'package:flutter_drpharma_2/Config/routes/routes.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/smooth_indicator.dart';
import 'package:flutter_drpharma_2/Features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:flutter_drpharma_2/l10n/l10n.dart';
import '../../../../core/app_export.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, supportedLocales: L10n.all,

// locale:const Locale('en'),
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // initialRoute: '/',
      // routes: Routes,
      home: ProfileInfoView(),
    );
  }
}
