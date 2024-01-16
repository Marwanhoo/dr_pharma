import 'package:flutter_drpharma_2/core/app_export.dart';

Map<String, WidgetBuilder> get routes {
  return {
    "/": (context) => const HomeSplashView(),
    '/layout': (context) => const Layout(),
    '/home': (context) => const HomeView(),
    '/category': (context) => CategoryView(),
    '/categoryProds': (context) => const MedicinesView(),
    '/cashBack': (context) => const CashBackView(),
    "/onBoarding view": (context) => const OnBoardingView(),
    '/login view': (context) => const LoginView(),
    '/signup view': (context) => const SignUpView(),
    '/create account view': (context) => const CreateAccountView(),
  };
}
