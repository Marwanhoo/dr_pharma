// ignore_for_file: file_names

import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class RouteManager {
  static moveTo(String path) =>
      Navigator.of(GlobalKeyy.currentContext).pushNamed(path);
  static back() => Navigator.of(GlobalKeyy.currentContext).pop();
}
