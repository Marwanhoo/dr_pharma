import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/category_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/home_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/medicine_view.dart';
import 'package:flutter_drpharma_2/layout.dart';

Map<String, WidgetBuilder> get Routes {
  return {
    '/': (context) => const Layout(),
    '/home': (context) => HomeView(),
    '/category': (context) => CategoryView(),
    '/categoryProds': (context) =>const MedicinesView(),
  };
}
