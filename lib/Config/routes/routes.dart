import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/home_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/medicine_view.dart';
import 'package:flutter_drpharma_2/Features/login/presentation/views/login_view.dart';
import 'package:flutter_drpharma_2/Features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:flutter_drpharma_2/Features/signup/presentation/views/create_account_view.dart';
import 'package:flutter_drpharma_2/Features/signup/presentation/views/signup_view.dart';

Map<String, WidgetBuilder> get Routes {
  return {
    "/": (context) => const OnBoardingView(),
    '/layout': (context) => const Layout(),
    '/home': (context) => HomeView(),
    '/category': (context) => CategoryView(),
    '/categoryProds': (context) => const MedicinesView(),
    '/cashBack': (context) => const CashBackView(),
    '/login view': (context) => const LoginScreen(),
    '/signup view': (context) => const SignUpView(),
    '/create account view': (context) => const CreateAccountView(),

  };
}
