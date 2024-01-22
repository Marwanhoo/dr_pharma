import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/bsProductsList.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

import '../../../../../core/app_export.dart';

class MedicinesViewBody extends StatelessWidget {
  const MedicinesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        pageTitle: 'Medicines',
      ).build(context),
      body:  const ProductsList(),
           
    );
  }
}

