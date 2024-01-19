import 'package:flutter_drpharma_2/core/app_export.dart';

class GlobalKeyy {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static final currentContext = navigatorKey.currentContext!;
  static final currentState = navigatorKey.currentState!;
  static final currentWidget = navigatorKey.currentWidget!;
}
