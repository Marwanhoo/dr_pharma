import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/custom_bottom_nav.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/bottom_sheet.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';

class InvoiceNavBar extends StatelessWidget {
  const InvoiceNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: AppFonts.Timer.copyWith(fontSize: 16),
              ),
              Text(
                ('30.50\$'),
                style: AppFonts.Timer.copyWith(fontSize: 16),
              )
            ],
          ),
          CustomBottomNav(
            btnText1: 'Add Item',
            btnText2: 'Checkout',
            height: 45,
            btnC1: Colors.transparent,
            btn1BorderC: AppColors.primary,
            btn2BorderC: AppColors.primary,
            textColor: AppColors.primary,
            btn2: AppColors.primary,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      height: 557.75,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 236, 234, 234),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        shadows: const [AppFonts.boxShadow],
                      ),
                      child: const CustomBottomSheet(),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
