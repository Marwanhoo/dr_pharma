import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$235.00",
          style: AppFonts.medium
              .copyWith(color: const Color.fromARGB(255, 182, 23, 11)),
        ),
        Text(
          "  \$355.00",
          style: AppFonts.small.copyWith(color: Colors.black),
        )
      ],
    );
  }
}



