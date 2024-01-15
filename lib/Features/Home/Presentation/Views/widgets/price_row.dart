

import 'package:flutter_drpharma_2/Core/app_export.dart';


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
          style: AppFonts.small.copyWith(
              decoration: TextDecoration.lineThrough, color: Colors.black),
        )
      ],
    );
  }
}
