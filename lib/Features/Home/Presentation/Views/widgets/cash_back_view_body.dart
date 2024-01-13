import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/cash_details.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_app_bar.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/trans_card.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/trans_details.dart';


class CashBackViewBody extends StatelessWidget {
  const CashBackViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(179),
        child: CustomAppBar(
          title: "Cash Back",
          leadingIcon: "assets/icons/arrow.svg",
          isFlash: false,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          CashesDetails(),
          SizedBox(
            height: 10,
          ),
          TransactionCard(),
          SizedBox(
            height: 20,
          ),
          TransactionDetails(
            iconPath: "assets/icons/greenTranss.svg",
          ),
          SizedBox(
            height: 20,
          ),
          TransactionDetails(
            iconPath: "assets/icons/redTrans.svg",
            color: AppColors.red,
          ),
        ],
      ),
    );
  }
}




