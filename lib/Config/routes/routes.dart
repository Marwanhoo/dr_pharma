import 'package:flutter_drpharma_2/core/app_export.dart';

Map<String, WidgetBuilder> get routes {
  return {
    '/': (context) => const HomeSplashView(),
    '/layout': (context) => const Layout(),
    '/home': (context) => const HomeView(),
    '/category': (context) => const CategoryView(),
    '/categoryProds': (context) => const MedicinesView(),
    '/cashBack': (context) => const CashBackView(),
    '/medicines': (context) => const MedicinesView(),
    '/MyAds': (context) => const MyAdsView(),
    '/medicalServices': (context) => const MedicalServicesView(),
    '/addService': (context) => const AddMedicalService(),
    '/beautyTools': (context) => const BeautyToolsView(),
    "/onBoarding view": (context) => const OnBoardingView(),
    '/login view': (context) => const LoginView(),
    '/signup view': (context) => const SignUpView(),
    '/create account view': (context) => const CreateAccountView(),
    '/forgot pass view': (context) => const ForgotPasswordView(),
    '/my wallet': (context) => const MyWalletView(),
    '/customer ads view': (context) => const CustomerAdsView(),
    '/my note book view': (context) => const MyNoteBookView(),
    '/expire products': (context) => const ExpireProducts(),
    '/chat view': (context) => const ChatView(),
    '/profile info edit view': (context) => const ProfileInfoEditView(),
    '/pharmacy info edit view': (context) => const PharmacyInfoEditView(),
  };
}
