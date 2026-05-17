import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/custom_bottom_nav.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/bottom_sheet.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/total_ptice_row.dart';

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
          const TotalPriceRow(),
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

