import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Config/app_localizations.dart';

extension AppSizes on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}

extension Translate on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
