import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/home_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/medicine_view.dart';
import 'package:flutter_drpharma_2/Features/on_boarding/presentation/views/onboarding_view.dart';

Map<String, WidgetBuilder> get Routes {
  return {
    "/": (context) => const OnBoardingView(),
    '/layout': (context) => const Layout(),
    '/home': (context) => HomeView(),
    '/category': (context) => CategoryView(),
    '/categoryProds': (context) => const MedicinesView(),
    '/cashBack': (context) => const CashBackView(),

  };
}
