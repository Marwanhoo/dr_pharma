import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/beauty_tools_view.dart';
import 'package:flutter_drpharma_2/Features/customer_ads/presentation/view/customer_ads_view.dart';
import 'package:flutter_drpharma_2/Features/expire_products/presentation/view/expire_products.dart';
import 'package:flutter_drpharma_2/Features/my_note_book/presentation/view/my_note_book_view.dart';
import 'package:flutter_drpharma_2/Features/my_wallet/presentation/view/my_wallet_view.dart';
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
    '/beautyTools': (context) => const BeautyToolsView(),
    "/onBoarding view": (context) => const OnBoardingView(),
    '/login view': (context) => const LoginView(),
    '/signup view': (context) => const SignUpView(),
    '/create account view': (context) => const CreateAccountView(),
    '/my wallet': (context) => const MyWalletView(),
    '/customer ads view': (context) => const CustomerAdsView(),
    '/my note book view': (context) => const MyNoteBookView(),
    '/expire products': (context) => const ExpireProducts(),
  };
}
