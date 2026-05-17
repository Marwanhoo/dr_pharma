import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/coupon_field.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/invoice_nav_bar.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/payment_row.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/helper.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CouponField(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Payment Summary',
            style: AppFonts.header2,
          ),
          const SizedBox(
            height: 10,
          ),
          const PaymetRow(
            text: 'Total before discount',
            amount: '50 \$',
            discount: '',
          ),
          const PaymetRow(
            text: 'Total after discount',
            amount: '30.50 \$',
            discount: '(-20%)',
          ),
          const PaymetRow(
            text: 'Coupon discount',
            amount: '0.0 \$',
            discount: '',
          ),
          DottedLine(
            lineLength: context.screenWidth * .8,
            dashColor: AppColors.softGrey,
            dashGapLength: 5,
            dashLength: 15,
          ),
          const InvoiceNavBar()
        ],
      ),
    );
  }
}
