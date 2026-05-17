import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/bsProductsList.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class FavoritViewBody extends StatelessWidget {
  const FavoritViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(pageTitle: 'Favorites').build(context),
      body:const ProductsList()
    );
  }
}
