import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/beauty_tools_view.dart';
import 'package:flutter_drpharma_2/Features/MyAds/Presentation/views/my_ads_view.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

Map<String, WidgetBuilder> get routes {
  return {
    "/": (context) => const HomeSplashView(),
    '/layout': (context) => const Layout(),
    '/home': (context) => const HomeView(),
    '/category': (context) => const CategoryView(),
    '/categoryProds': (context) => const MedicinesView(),
    '/cashBack': (context) => const CashBackView(),
    '/medicines': (context) => const MedicinesView(),
    '/MyAds':(context) =>  const MyAdsView(),
    '/beautyTools': (context) => const BeautyToolsView(),
    "/onBoarding view": (context) => const OnBoardingView(),
    '/login view': (context) => const LoginView(),
    '/signup view': (context) => const SignUpView(),
    '/create account view': (context) => const CreateAccountView(),
  };
}
