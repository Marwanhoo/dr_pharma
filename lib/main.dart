import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/flash_sale.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/home_view.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/medicine_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
