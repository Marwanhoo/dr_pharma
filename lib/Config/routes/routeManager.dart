// ignore_for_file: file_names

import 'package:flutter_drpharma_2/core/app_export.dart';

class RouteManager {
  static moveTo(path) => Navigator.of(navigatorKey.currentContext!).push(MaterialPageRoute(builder: (_) => path));
  static back() => Navigator.of(navigatorKey.currentContext!).pop();
}
