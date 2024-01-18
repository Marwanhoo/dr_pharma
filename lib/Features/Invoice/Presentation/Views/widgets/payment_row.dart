import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';

class PaymetRow extends StatelessWidget {
  const PaymetRow({
    super.key,
    required this.text,
    required this.amount,
    required this.discount,
  });
  final String text;
  final String amount;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Row(
          children: [
            Text(
              text,
              style: AppFonts.medium,
            ),
            Text(
              discount,
              style: AppFonts.small,
            ),
          ],
        ),
        Text(
          amount,
          style: AppFonts.medium,
        )
      ],
    );
  }
}
